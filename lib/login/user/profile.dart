import 'package:ecommerce/cart/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home.dart';

class profile extends StatefulWidget {
  const profile({Key key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
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
      if (index == 2) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => profile()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.black,
       leading: Padding(
         padding: const EdgeInsets.only(left: 20),
         child: IconButton(
           icon: Icon(Icons.arrow_back_ios),
           color: Colors.white,
           onPressed: () {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => Home()),
             );
           },
         ),
       ),

        title: Text("Profile"),
      ),
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
