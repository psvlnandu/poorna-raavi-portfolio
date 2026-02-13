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
          //main
          Container(
            height: 200,
            width: double.maxFinite,
            color: Colors.red,
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