import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

void main() {
  runApp(const AppHome());
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lab 05 - Flutter"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              size: 40,
              Iconsax.activity4,
              color: Colors.blue,
            ),
            Icon(
              size: 40,
              Iconsax.activity4,
              color: Colors.blue,
            ),
            Text(
              "This is a ",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30,
              ),
            ),
            Icon(
              size: 30,
              Iconsax.add_circle,
              color: Colors.blue,
            ),
          ],
        ),
      ),
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
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(5, (index) => _buildStar(index)),
        ),
      ),
    );
  }
}
