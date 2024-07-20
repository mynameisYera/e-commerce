import 'package:flutter/material.dart';
import 'package:nike_flutter/components/shoe_in.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.shoe.image, width: 50,),
      title: Text(widget.shoe.name),
      subtitle: Text(widget.shoe.price + ' \$'),
    );
  }
}