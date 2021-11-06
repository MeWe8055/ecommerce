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
      body: Padding(
        padding: EdgeInsets.all(
          25.0
        ),
        child: Center(
          child: Form(
              child:Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(

                      ),
                      labelText: "Email"
                    ),

                  ),
                  Padding(
                      padding: EdgeInsets.only(
                        top: 20.0,
                      ),
                    child: TextFormField(

                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: RaisedButton(
                        onPressed: () {},
                        child: Text("Login")
                    )
                  )
                ],
              ) ),
        ),
      )
    );
  }
}
