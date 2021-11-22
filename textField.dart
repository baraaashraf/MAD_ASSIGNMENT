import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final fruits_list;
  MyTextField(this.fruits_list);

  @override
  MyTextField1 createState() => MyTextField1(fruits_list);
}

class MyTextField1 extends State<MyTextField> {
  final fruits_list;
  final TextFieldController = TextEditingController();
  bool selected = false;
  var answer = "";

  @override
  void dispose() {
    TextFieldController.dispose();
    super.dispose();
  }

  MyTextField1(this.fruits_list);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: TextField(
            controller: TextFieldController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a number',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: RaisedButton(
            color: Colors.green,
            onPressed: () => {
              if ((int.parse(TextFieldController.text)) > fruits_list.length || (int.parse(TextFieldController.text)) < 1)
                {
                  setState(() {
                    this.selected = true;
                    this.answer = "Invalid input please input a number from the range";
                  })
                }
              else{
                setState(() {
                  this.selected = true;
                  this.answer = fruits_list[(int.parse(TextFieldController.text))-1];
                })
              }
            },
            child: Text("Enter"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Visibility(
            visible: selected,
            child: Text(
              answer,
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
              textScaleFactor: 1.5,

            ),
          ),
        ),
      ],
    );
  }
}
