import 'package:flutter/material.dart';

class BottomTabs extends StatelessWidget {
  const BottomTabs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          BottomTabBtn(),
          BottomTabBtn(),
          BottomTabBtn(),
        ],
      )
    );
  }
}

class BottomTabBtn extends StatelessWidget {
  const BottomTabBtn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.home,
        color: Colors.black,
      ),

    );
  }
}

