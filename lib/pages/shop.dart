import 'package:flutter/material.dart';
import 'package:nike_flutter/components/cart.dart';
import 'package:nike_flutter/components/shoe_in.dart';
import 'package:nike_flutter/components/shoes.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('Succesfulli added'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          padding: EdgeInsets.all(10),
          height: 60,
          decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.circular(20),),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search', style: TextStyle(color: const Color.fromARGB(255, 196, 196, 196), fontSize: 18),),
              IconButton(onPressed: (){}, icon: Icon(Icons.search, size: 30,),),
          ],),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 10)),
        Text('The best sneakers in the world', style: TextStyle(color: Color.fromARGB(255, 168, 168, 168)),),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Bestsellers', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),),
              Text('See all!', style: TextStyle(color: Colors.blue),)
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index){
              Shoe shoe = value.getShoeList()[index];
              return ScrollBul(
                shoe: shoe,
                onTap: () => addShoeToCart(shoe),
              );
            },

          )
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Divider(color: 
            Color.fromARGB(255, 230, 230, 230),))
      ],
    ));
  }
}