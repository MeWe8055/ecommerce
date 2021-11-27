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
                clipBehavior: Clip.antiAlias,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    FittedBox(
                      child: Container(
                        child: Image.asset('image/noodles.jpg'),
                        width: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30, left: 80, right: 30, bottom: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Noodles",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text("Quantity"),
                         Container(
                           width: 20.0,
                           height: 20.0,
                           decoration: BoxDecoration(
                             color: Colors.grey[300],
                             borderRadius: BorderRadius.circular(3),

                           ),

                         )
                        ],
                      ),
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
