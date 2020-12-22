import 'package:flutter/material.dart';
import 'block/ntravelBlock.dart';
import 'circleindectaor.dart';
import 'natravel_data.dart';


class MainTravleConceptApp extends StatelessWidget {
  const MainTravleConceptApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: _NtravelComcept(),
    );
  }
}

class _NtravelComcept extends StatefulWidget {

  @override
  __NtravelComceptState createState() => __NtravelComceptState();
}

class __NtravelComceptState extends State<_NtravelComcept> with SingleTickerProviderStateMixin{
 final _bloc = NtravelBLoC();

 @override
  void initState() {
    _bloc.init(this);
    super.initState();
  }
  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedBuilder(
          animation: _bloc,
          builder: (_,__) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color:  Colors.white,
                height: 80.0,
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Home Page', style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: ClipOval(
                          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQExZpXZj5O1DbZKmZZamN9nzTcA-oYK-1HwA&usqp=CAU',
                          fit: BoxFit.cover ,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ),
              Container(
                height: 60.0,
                child: TabBar(
                  onTap: _bloc.onCategorySelected,
                  controller: _bloc.tabController,
                  isScrollable: true,
                  indicatorWeight: 1.0,
                  indicator: CircleTabIndicator(color: Colors.amber, radius: 20.0),
                  tabs: _bloc.tabs.map((e) => _NtravelTabWidget(e)).toList(),
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    controller: _bloc.scrollController,
                    itemCount: _bloc.items.length,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    itemBuilder: (context, index) {
                      final item = _bloc.items[index];
                      if (item.isCategory) {
                        return _NtravelCategoryItem(item.category);
                      } else {
                        return _NtravelProductItem(item.product);
                      }
                    }
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class _NtravelTabWidget extends StatelessWidget {
  final NtravelTabCategory tabCategory;

  const _NtravelTabWidget(this.tabCategory);

  @override
  Widget build(BuildContext context) {
    final selected = tabCategory.selected;
    return Opacity(
      opacity: selected ? 1 : 0.5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(tabCategory.category.name, style: TextStyle(
          color: Colors.black, 
          fontWeight: FontWeight.bold,
          fontSize: 13.0,
        ),),
      ),
    );
  }
}
class _NtravelCategoryItem extends StatelessWidget {
  const _NtravelCategoryItem(this.category);

  final NtravelCategory category;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: categoryHeight,
      alignment: Alignment.centerLeft,
      child: Text(category.name, style: TextStyle(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),),
    );
  }
}

class _NtravelProductItem extends StatelessWidget {
  const _NtravelProductItem(this.product);

  final NtravelProduct product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Card(
          elevation: 6,
          //margin: EdgeInsets.symmetric(vertical: 5),
          shadowColor: Colors.black54,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.network(product.image, height: 60,),
              ),
              SizedBox(width: 10.0,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(product.name,style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(width: 5.0, height: 5.0,),
                    Text(product.description,
                    maxLines: 2,
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.0,
                  ),),
                  SizedBox(height: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$${product.price.toStringAsFixed(2)}',style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, top: 0),
                    child: Container(
                      height: 35.0,
                      width: 35.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFFFC400)
                        ),
                      child: IconButton(icon: Icon(Icons.add, size: 20,color: Colors.white), onPressed: () {  },))
                  ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
          ),
      ),
    );
  }
}