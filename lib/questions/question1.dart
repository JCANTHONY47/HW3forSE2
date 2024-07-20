import 'package:flutter/material.dart';

class Question1 extends StatelessWidget {
  const Question1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('Question 1: Rows'),
            centerTitle: true,
          ),
          body: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 10), // Space between widgets
              Icon(Icons.favorite, color: Colors.red, size: 40.0),
              SizedBox(width: 10), // Space between widgets
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(3.14),
                child: Icon(Icons.comment, color: Colors.black, size: 40.0),
              ),
              SizedBox(width: 10), // Space between widgets
              Icon(Icons.send, color: Colors.black, size: 40.0),
              Spacer(), // Spacing between icons
              Icon(Icons.bookmark_border_outlined, color: Colors.black, size: 40.0),
              SizedBox(width: 10), // Space between widgets

              // ADD YOUR WIDGETS HERE

            ],
          ))),
    );
  }
}
