import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/cart.png',),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Text('Shoppello', style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontFamily: 'Pacifico',
                        letterSpacing: 2.5
                      ),)
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    Text('Have a great shopping!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      letterSpacing: 2.5,
                      fontFamily: 'Pacifico'
                    ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
