import 'package:flutter/material.dart';
import 'package:poorna_raavi/About.dart';
import 'package:poorna_raavi/Ed.dart';
import 'package:poorna_raavi/Experience.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      ListView(
        scrollDirection:Axis.vertical,
        children:[
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 10),
              child: About(), 
          ),

          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 10),
              child: Experience(), 
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 10),
              child: Ed(), 
          ),

          

          
        ]
      )
    );
  }
}