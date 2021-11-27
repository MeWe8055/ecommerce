import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Card(
                child: Row(
                  children: [
                    FittedBox(
                      child: Container(
                        child: Image.asset('image/User.jpg'),
                        width: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                         Text("User Name"),
                         Text("User email"),

                        ],
                      ),
                    )

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Card(
                  child: SizedBox(
                    height: 30,
                    width: 1000,
                    child: Text("My Orders", style: TextStyle(
                      fontSize: 18,
                    ),textAlign: TextAlign.center,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Card(
                  child: SizedBox(
                    height: 30,
                    width: 1000,
                    child: Text("Cart", style: TextStyle(
                      fontSize: 18,
                    ),textAlign: TextAlign.center,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Card(
                  child: SizedBox(
                    height: 30,
                    width: 1000,
                    child: Text("Log Out", style: TextStyle(
                      fontSize: 18,
                    ),textAlign: TextAlign.center,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
