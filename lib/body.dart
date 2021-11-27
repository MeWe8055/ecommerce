import 'package:ecommerce/cart/cart.dart';
import 'package:ecommerce/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class body extends StatefulWidget {
  const body({Key key}) : super(key: key);

  @override
  _bodyState createState() => _bodyState();
}

class _bodyState extends State<body> {
  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      }
      if (index == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Cart()));
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          ),
        ),
        backgroundColor: Colors.white38,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: TextFormField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                      color: Colors.black,
                    )),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
                hintText: 'Search Food, Chats...',
                hintStyle: TextStyle(fontSize: 15.0)),
          ),
        ),
      ),


      body: ListView(

        scrollDirection: Axis.vertical,

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
                      child: Image.asset('image/noodles.jpg'),
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                       left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Noodles",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '₹ 50',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
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
                      child: Image.asset('image/noodles.jpg'),
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10),
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
                        Text(
                          '₹ 50',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
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
                      child: Image.asset('image/noodles.jpg'),
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10),
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
                        Text(
                          '₹ 50',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
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
                      child: Image.asset('image/noodles.jpg'),
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10),
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
                        Text(
                          '₹ 50',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
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
                      child: Image.asset('image/noodles.jpg'),
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10),
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
                        Text(
                          '₹ 50',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
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
                      child: Image.asset('image/noodles.jpg'),
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10),
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
                        Text(
                          '₹ 50',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
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
                      child: Image.asset('image/noodles.jpg'),
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10),
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
                        Text(
                          '₹ 50',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    bottomNavigationBar: Container(
    child: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.add_shopping_cart),
    label: 'cart',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.admin_panel_settings),
    label: 'Profile',
    ),
    ],
    currentIndex: _selectedIndex,
    selectedItemColor: Colors.black,
    onTap: _onItemTap,
    ),
    ),
    );
  }
}
