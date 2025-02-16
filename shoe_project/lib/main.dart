import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First project on image"),
          centerTitle: true,
          elevation: 3.5.
        ),
      
    
      
      body: Container(
        color: Colors.cyan,
        padding:EdgeInsets.all(50),
        margin: EdgeInsets.all(20),
        alignment:Alignment.center,
        
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBar
          children: [
            Icon(
              size 
            )
          ]
        )
       
       



      ),
    ),
    );


     
  }
}
