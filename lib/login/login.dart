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
      body: SafeArea(
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
      )
    );
  }
}
