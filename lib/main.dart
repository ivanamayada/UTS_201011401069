import 'dart:math';
import 'package:flutter/material.dart';
import 'package:number_to_character/number_to_character.dart';

void main() {
  runApp(MyApp());
}

var converter = NumberToCharacterConverter('en');

class MyApp extends StatelessWidget {
  final List<Container> myList = List.generate(
    12,
    (index) {
      return Container(
        color: Color.fromARGB(
          255,
          Random().nextInt(256),
          Random().nextInt(256),
          Random().nextInt(256),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            converter.convertInt(index + 1),
            style: TextStyle(fontSize: 16),
          ),
        ),
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ivana Mayada"),
        ),
        body: GridView(
          padding: EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 2 / 2),
          children: myList,
        ),
      ),
    );
  }
}
