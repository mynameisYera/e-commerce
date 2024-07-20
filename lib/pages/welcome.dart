import 'package:flutter/material.dart';
import 'package:nike_flutter/pages/homepage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 246, 246),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('assets/nike_logo.png', width: 400),
                Text('Nike Store', style: TextStyle(
                  color: Color.fromARGB(255, 19, 19, 19),
                  fontSize: 30,
                  fontFamily: 'assets/Roboto-Black.ttf',
                ),),
            Padding(padding: EdgeInsets.only(top: 50)),
            SizedBox(
              width: 300,
              height: 70,
              child: Text('Number one brand in the world. lorem ipsum hover index shop encomerce', 
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15, 
              color: const Color.fromARGB(255, 139, 139, 139)),
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 150)),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 0, 0))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                }, 
                child: Text('Next', style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 20))
          ],
        )
      ),
    );
  }
}