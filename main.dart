import 'package:flutter/material.dart';

import 'textField.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var fruits_list = ["Apple", "Orange", "Rambutan", "Pineapple", "Watermelon", "Mango", "Banana"];
    String st_fruits_list = fruits_list.length.toString();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fruits list'),
          centerTitle: true,
          backgroundColor: Colors.black54,
        ),
        body: Column(
          children: [ Text(
            "Enter a number from 1 to " + st_fruits_list,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),  MyTextField(fruits_list)],
        ),
      ),
    );
  }
}
