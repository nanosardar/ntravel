import 'package:flutter/material.dart';

import '../natravel_data.dart';

const categoryHeight = 55.0;
const productHeight = 120.0;

class NtravelBLoC with ChangeNotifier {
  List<NtravelTabCategory> tabs = [];
  List<NtravelItem> items = [];
  TabController tabController;
  ScrollController scrollController = ScrollController();
  bool _listen = true;

  void init(TickerProvider ticker) {
    tabController = TabController(vsync: ticker, length: ntravelCategories.length);

    double offsetFrom = 0.0;
    double offsetTo = 0.0;

    for (int i = 0; i < ntravelCategories.length; i++) {
      final category = ntravelCategories[i];

      if (i > 0) {
        offsetFrom += ntravelCategories[i - 1].products.length * productHeight;
      }
      if (i < ntravelCategories.length - 1) {
        offsetTo = offsetFrom + ntravelCategories[i + 1].products.length * productHeight;
      } else {
        offsetTo = double.infinity;
      }

      tabs.add(NtravelTabCategory(
        category: category,
        selected: (i == 0),
        offsetFrom: categoryHeight * i + offsetFrom,
        offsetTo: offsetTo,
      ));
      items.add(NtravelItem(category: category));
      for (int j = 0; j < category.products.length; j++) {
        final product = category.products[j];
        items.add(NtravelItem(product: product));
      }
    }

    scrollController.addListener(_onScrollListener);
  }

  void _onScrollListener() {
    if (_listen) {
      for (int i = 0; i < tabs.length; i++) {
        final tab = tabs[i];
        if (scrollController.offset >= tab.offsetFrom && scrollController.offset <= tab.offsetTo && !tab.selected) {
          onCategorySelected(i, animationRequired: false);
          tabController.animateTo(i);
          break;
        }
      }
    }
  }

  void onCategorySelected(int index, {bool animationRequired = true}) async {
    final selected = tabs[index];
    for (int i = 0; i < tabs.length; i++) {
      final condition = selected.category.name == tabs[i].category.name;
      tabs[i] = tabs[i].copyWith(condition);
    }
    notifyListeners();

    if (animationRequired) {
      _listen = false;
      await scrollController.animateTo(
        selected.offsetFrom,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear,
      );
      _listen = true;
    }
  }

  @override
  void dispose() {
    scrollController.removeListener(_onScrollListener);
    scrollController.dispose();
    tabController.dispose();
    super.dispose();
  }
}

class NtravelTabCategory {
  const NtravelTabCategory({
    @required this.category,
    @required this.selected,
    @required this.offsetFrom,
    @required this.offsetTo,
  });

  NtravelTabCategory copyWith(bool selected) => NtravelTabCategory(
        category: category,
        selected: selected,
        offsetFrom: offsetFrom,
        offsetTo: offsetTo,
      );

  final NtravelCategory category;
  final bool selected;
  final double offsetFrom;
  final double offsetTo;
}

class NtravelItem {
  const NtravelItem({
    this.category,
    this.product,
  });
  final NtravelCategory category;
  final NtravelProduct product;
  bool get isCategory => category != null;
}