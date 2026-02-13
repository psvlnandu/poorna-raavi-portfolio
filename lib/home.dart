import 'package:flutter/material.dart';

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
          //about
          Container(
            constraints: const BoxConstraints(minHeight: 400),
            width: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/about_bg01.jpeg'),
              fit:BoxFit.cover,
              )
            ),
          ),

           //experience
          Container(
            height: 200,
            width: double.maxFinite,
            color: Colors.blue,
          ),

          Container(
            height: 200,
            width: double.maxFinite,
            color: Colors.green,
          ),
        ]
      )
    );
  }
}