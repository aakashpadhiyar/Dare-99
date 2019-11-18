import 'package:flutter/material.dart';
import 'about.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade400,
          title: Text(
            'Dare-99',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Pacifico',
            ),
          ),
        ),
        drawer: Drawer(
          child: About(),
        ),
      ),
    );
  }
}
