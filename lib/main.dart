import 'package:ecommerce/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecommerce/splash.dart';
//app
//git done
//dd
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your appliflutter cation.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home:Splash()
      // AnimatedSplashScreen(
      //    splash:Splash(),
      //   // Container(
      //   //
      //   //   child: new Image.asset('image/RICHLY.jpg'),color:Colors.green,
      //   //
      //   //   alignment: Alignment.centerLeft,
      //   //    constraints: BoxConstraints.tightForFinite(width: 200),
      //   //
      //   // ),
      //     duration: 3000,
      //
      //
      // //
      // nextScreen: MyHomePage(title: 'GFG')
      //)
    );
  }
}
