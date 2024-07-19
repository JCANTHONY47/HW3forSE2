import 'package:flutter/material.dart';

class Question4 extends StatefulWidget {
  @override
  _Question4State createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Question 4: ListView'),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            _buildPost('Lucas Lepri', 'Edinburg, Texas', 'https://cdnb.artstation.com/p/assets/images/images/033/599/387/large/ismael-pommaz-mando-and-grogu.jpg?1610050130'),
            _buildPost('Baby Yoda', '???', 'https://i.insider.com/5e32f2a324306a19834af322?width=1800&format=jpeg&auto=webp'),
            _buildPost('Mando', 'Mandalore', 'https://th.bing.com/th/id/R.875ac5e945926729d6c4af3fc557423a?rik=l9wf4rADmQ0Wjg&pid=ImgRaw&r=0'),
          ],
        ),
      ),
    );
  }

  Widget _buildPost(String name, String location, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 24,
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    location,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.more_vert),
            ],
          ),
          SizedBox(height: 16),
          Image.network(
            imageUrl,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(width: 10), // Space between widgets
              Icon(Icons.favorite, color: Colors.red),
              SizedBox(width: 10), // Space between widgets
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(3.14),
                child: Icon(Icons.comment, color: Colors.black),
              ),
              SizedBox(width: 10), // Space between widgets
              Icon(Icons.play_arrow, color: Colors.black),
              Spacer(), // Spacing between icons
              Icon(Icons.bookmark_border_outlined, color: Colors.black),
              SizedBox(width: 10), // Space between widgets
            ],
          ),
        ],
      ),
    );
  }
}
