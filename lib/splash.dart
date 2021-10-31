import 'package:flutter/material.dart';

import 'home.dart';


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
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage (title: 'GFG',)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
            Container(
              //child: new Image.asset('image/sample.jpg'),
            decoration: BoxDecoration(image:
            DecorationImage(

                  image: AssetImage("image/RICHLY.jpg"),
                  fit: BoxFit.cover
                  ),
            ),


             alignment: Alignment.center,
              constraints: BoxConstraints.tightForFinite(width: 600),
              // height:200, width: 100,
             // color: Colors.blue,

            ),




    );

  }

}