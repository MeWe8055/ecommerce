import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';


class login extends StatefulWidget {
  const login({Key key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
      child: Center(
      child:Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text("Login",style: TextStyle(
              fontSize: 20
            ),
            ),
          Text("Welcome Back !",style: TextStyle(
              fontSize: 50
          ),
          ),

    ],
    ),
    ),
      ),
    );
  }
}
