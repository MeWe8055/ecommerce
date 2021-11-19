import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        title:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),



                ),
                labelText: "Search"),

          ),
        )


      ),
    );
  }
}
