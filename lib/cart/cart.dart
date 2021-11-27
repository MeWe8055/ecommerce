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
        elevation: 0,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.black,
        title: Text("Cart"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    FittedBox(
                      child: Container(
                        child: Image.asset(
                          'image/noodles.jpg',
                          fit: BoxFit.fill,
                        ),
                        width: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 0, left: 10, right: 30, bottom: 40),
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
                          Text("Quantity",
                            style: TextStyle(
                              fontSize: 20,),

                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 15.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  '₹ 50',
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    FittedBox(
                      child: Container(
                        child: Image.asset(
                          'image/noodles.jpg',
                          fit: BoxFit.fill,
                        ),
                        width: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 0, left: 10, right: 30, bottom: 40),
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
                          Text("Quantity",
                            style: TextStyle(
                              fontSize: 20,),),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 15.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  '₹ 50',
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    FittedBox(
                      child: Container(
                        child: Image.asset(
                          'image/noodles.jpg',
                          fit: BoxFit.fill,
                        ),
                        width: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 0, left: 10, right: 30, bottom: 40),
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
                          Text("Quantity",
                            style: TextStyle(
                              fontSize: 20,),),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 15.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  '₹ 50',
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Total',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    '₹ 150',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top: 45),
              child: MaterialButton(
                  onPressed: () {},
                color: Colors.black,
                height: 55.0,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('PROCEED TO CHECKOUT ',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),),
                  ),
            ),
          ],
        ),

      ),

    );
  }
}
