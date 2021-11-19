import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

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
          automaticallyImplyLeading: false,
          backgroundColor:Colors.white38,
          elevation: 0.0,
          title:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Colors.black,

                    ),

                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.black,

                      )
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                  hintText: 'Search Food, chats',
                  hintStyle: TextStyle(fontSize: 15.0)),

            ),
          )


      ),
      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150.0,

              child: Carousel(
                boxFit: BoxFit.cover,

                autoplay: true,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 6.0,
                dotIncreasedColor: Colors.white,
                dotBgColor: Colors.transparent,
                dotPosition: DotPosition.bottomCenter,
                dotVerticalPadding: 5.0,
                showIndicator: true,
                indicatorBgPadding: 7.0,
                borderRadius: true,
                radius: Radius.circular(20.0),
                images: [
                  AssetImage("image/RICHLY.jpg"),
                  AssetImage("image/RICHLY.jpg"),
                  AssetImage("image/RICHLY.jpg"),
                  AssetImage("image/RICHLY.jpg"),
                ],
              ),

            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                   child: Text("Food",style: TextStyle(fontSize: 20
                   ),),
                 // color: Colors.purple,
                  decoration: BoxDecoration(

                      border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: const EdgeInsets.all(5.0
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  child: Text("Chats",style: TextStyle(fontSize: 20
                  ),),
                  // color: Colors.purple,
                  decoration: BoxDecoration(

                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: const EdgeInsets.all(5.0
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}