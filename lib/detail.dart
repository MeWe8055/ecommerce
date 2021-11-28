import 'package:flutter/material.dart';

class detail extends StatelessWidget {
  const detail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),

      ),
      body: Column(
        children: [
          Image.asset( 'image/noodles.jpg',),
          Text('Desc')
        ],
      ),
    );
  }
}
