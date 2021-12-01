import 'package:ecommerce/login/login.dart';
import 'package:ecommerce/welcome.dart';
import 'package:flutter/material.dart';
//DD
import 'package:firebase_core/firebase_core.dart';
class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
        await Firebase.initializeApp();
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => welcome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
            Center(
              child: Container(
              decoration: BoxDecoration(image:
              DecorationImage(
                  image: AssetImage("image/RICHLY.jpg"),
                    fit: BoxFit.cover
                    ),
              ),

               alignment: Alignment.center,
               // constraints: BoxConstraints.tightForFinite(width: 600),
              ),
            ),
    );

  }

}