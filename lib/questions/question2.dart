import 'package:flutter/material.dart';

class Question2 extends StatelessWidget {
  const Question2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Question 2: Columns'),
        centerTitle: true,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: <Widget>[
              Text(
                'Lucas Lepri',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 4), // Spacing between name and location
              Text(
                'Edinburg, Texas',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            // ADD YOUR WIDGETS HERE

          ]),
    ));
  }
}
