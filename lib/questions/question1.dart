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
              Icon(Icons.favorite, color: Colors.red),
              Icon(Icons.comment, color: Colors.black),
              Icon(Icons.play_arrow, color: Colors.black),
              Spacer(), // Spacing between icons
              Icon(Icons.bookmark_border_outlined, color: Colors.black),

              // ADD YOUR WIDGETS HERE

            ],
          ))),
    );
  }
}
