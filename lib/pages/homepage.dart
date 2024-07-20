import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nike_flutter/components/bottom_nav_bar.dart';
import 'package:nike_flutter/pages/cart.dart';
import 'package:nike_flutter/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;

  void navigateBottomBar(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 234, 234),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(onPressed: (){
              Scaffold.of(context).openDrawer();
            }, 
            padding: EdgeInsets.only(left: 12),
            icon: Icon(Icons.menu),
            );
          }
        ),
        backgroundColor: Colors.transparent,
      ),
      
      drawer: Drawer(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(left: 25.0)),
            DrawerHeader(child: Image.asset('assets/nike_logo.png')),
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text('H O M E'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('S E T T I N G S'),
              ),
            )
          ],
        ),
      ),
      body: 
      _pages[selectedIndex],
      bottomNavigationBar: BottomNavBar(
        onTapChange: (index) => navigateBottomBar(index) 
      ),
    );
  }
}