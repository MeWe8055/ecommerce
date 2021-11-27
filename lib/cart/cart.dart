import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Cart"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Card(
                child: Row(
                  children: [
                    FittedBox(

                      child: Container(
                        child: Image.asset('image/noodles.jpg'),

                        width: 150,
                        //  padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(const Radius.circular(100.0))),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "product Name",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("quantity"),
                        ToggleButtons(
                          children: [
                            Icon(Icons.add),
                            // SizedBox(child: Text("1")),
                            Icon(Icons.add),
                          ],
                          isSelected: [true, false],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
