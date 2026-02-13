import 'package:flutter/material.dart';

class home extends StatefulWidget{
  const home({super.key});
  @override
  State<home> createState() => _homeState();
}
class _homeState extends State<home>{
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
              image: DecorationImage(image: AssetImage('assets/images/about_bg.jpeg'),
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