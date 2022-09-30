// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class BirthdayCard extends StatelessWidget {
  const BirthdayCard({super.key, required this.text});
  final String text;
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Birthday App",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset("images/birth.png",
            fit: BoxFit.fitHeight,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100,top: 70),
            child:  Text(text,
            style: const TextStyle(
              //backgroundColor: Colors.white,
              color: Colors.pinkAccent,
              fontSize: 25,
              fontWeight: FontWeight.w500, 
              shadows: [
                Shadow(
                  color: Color.fromARGB(255, 16, 12, 12),
                  blurRadius: 2.5,
                  offset: Offset(-2,0)
                )
              ]
            ),
            ),
          )
        ],
      ),
    );
  }
}