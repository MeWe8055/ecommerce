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
      body: Scaffold(
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
          Padding(
            padding: EdgeInsets.only(
              top: 20.0,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.mail),
                hintText: 'Email',
                labelText: 'Name *',
              ),
              onSaved: (String value) {


              },
              validator: (String value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
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
