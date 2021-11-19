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
        elevation: 0.0,
        title:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),

                ),
              prefixIcon: Padding(
                  padding: EdgeInsets.all(0.0),
                child: Icon(
                  Icons.search,
                color: Colors.grey,
                ),
                 ),
                hintText: 'Search Food, chats',
                hintStyle: TextStyle(fontSize: 15.0)),

          ),
        )


      ),
    );
  }
}
