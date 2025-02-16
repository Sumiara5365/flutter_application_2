import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Star Rating',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StarRatingPage(),
    );
  }
}

class StarRatingPage extends StatefulWidget {
  @override
  _StarRatingPageState createState() => _StarRatingPageState();
}

class _StarRatingPageState extends State<StarRatingPage> {
  int _rating = 0; // Stores the number of stars selected (from 0 to 5)

  Widget _buildStar(int index) {
    return IconButton(
      icon: Icon(
        index < _rating ? Icons.star : Icons.star_border,
        color: index < _rating ? Colors.yellow : Colors.grey,
        size: 40,
      ),
      onPressed: () {
        setState(() {
          _rating = index + 1; // Set rating to the clicked star's position
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Star Rating'),
      ),
      body: Row(
        children:[
          Icon(
            size:70,
            Iconsax.activity4,
            color: Colors.blue,
          )
        Text(
         "This is a",
         style: TextStyle( color: Colors.amber,
         fontSize: 60,
         )
        ),
      ),
    );
  }
}

