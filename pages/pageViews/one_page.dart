// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 173, 255, 20),
          ),
          child: Center(
            child: Text(
              'Olá Mundo!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ), 
          ),
        ),
        Row(
          children: [
            Container(
              color: Color.fromARGB(255, 86, 24, 255),
              height: 100,
              width: 180,
              child: Center(
                child: Text('Container 1'),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 255, 132, 31),
              height: 100,
              width: 180,
              child: Center(
                child: Text('Container 2'),
              ),
            )
          ],
        )
      ],
    );
  }
}
