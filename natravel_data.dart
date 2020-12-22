import 'package:meta/meta.dart' show required;
import 'package:flutter/material.dart';

class NtravelCategory {
  const NtravelCategory({@required this.name,@required this.products,});
  final String name;
  final List<NtravelProduct> products;
  
}
class NtravelProduct {
  const NtravelProduct({
    @required  this.name,
    @required this.description,
    @required this.image,
    @required this.price
  });
  final String name;
  final String description;
  final String image;
  final double price;
}

const ntravelCategories = [
  NtravelCategory(
    name: 'Pizza',
    products: [
      NtravelProduct(
        name: 'Burger',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 3.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 5.99,
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvRTensYjuHXW_oc67JH0_FME1L99SuPu4YA&usqp=CAU'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 8.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 4.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 9.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 3.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
    ]
  ),
  NtravelCategory(
    name: 'Dinner',
    products: [
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 3.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 5.99,
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvRTensYjuHXW_oc67JH0_FME1L99SuPu4YA&usqp=CAU'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 8.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 4.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 9.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 3.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
    ]
  ),
  NtravelCategory(
    name: 'Burger',
    products: [
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 3.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 5.99,
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvRTensYjuHXW_oc67JH0_FME1L99SuPu4YA&usqp=CAU'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 8.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 4.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 9.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 3.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
    ]
  ),
  NtravelCategory(
    name: 'Hot Dock',
    products: [
      NtravelProduct(
        name: 'What',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 8.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 5.99,
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvRTensYjuHXW_oc67JH0_FME1L99SuPu4YA&usqp=CAU'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 8.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 4.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 9.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
      NtravelProduct(
        name: 'Silim Lights',
        description: 'Beef-Bubimap mit Reis, some des and going to said every thing what we wanted',
        price: 3.99,
        image: 'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg'
      ),
    ]
  ),
];