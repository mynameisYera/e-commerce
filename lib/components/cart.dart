import 'package:flutter/material.dart';
import 'package:nike_flutter/components/shoe_in.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(
      description: 'One of famous sneakers in our shop!', 
      name: 'Air Jordan', 
      price: '234', 
      image: 'assets/nike2.png'
    ),
    Shoe(
      description: 'This shoe you can use at winter.', 
      name: 'Air Jordan', 
      price: '403', 
      image: 'assets/nike3.png'
    ),
    Shoe(
      description: 'With this shoe you can go how to footbal and party!', 
      name: 'Air Jordan', 
      price: '140', 
      image: 'assets/nike4.png'
    ),
    Shoe(
      description: 'You can jump very high!', 
      name: 'Air Jordan', 
      price: '234', 
      image: 'assets/nile5.png'
    ),
  ];


  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart(){
    return userCart;
  }


  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();

  }

}