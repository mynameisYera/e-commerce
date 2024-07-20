import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nike_flutter/components/shoe_in.dart';

class ScrollBul extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ScrollBul({super.key, required this.shoe, required this.onTap});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 280,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(shoe.image, width: 300, height: 300,),
                Text(shoe.name, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                Text(shoe.description, textAlign: TextAlign.center, style: TextStyle(color: const Color.fromARGB(255, 193, 193, 193)),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price: \$' + shoe.price, style: TextStyle(fontSize: 20)),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Icon(Icons.add, color: Colors.white,)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}