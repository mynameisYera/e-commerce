import 'package:flutter/material.dart';
import 'package:nike_flutter/components/cart.dart';
import 'package:nike_flutter/components/cartitem.dart';
import 'package:nike_flutter/components/shoe_in.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<Cart>(builder: (context, value, child) => Column(
        children: [
          Text('My carts:', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          Expanded(child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context, index) {
            Shoe indevidualShoe = value.getUserCart()[index];

            return CartItem(shoe: indevidualShoe,);
          }))
        ],
      ),),
    );
  }
}