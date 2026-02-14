import 'package:flutter/material.dart';
import 'package:poorna_raavi/about.dart';

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
          about(),
          
           //experience
          Container(
            constraints: const BoxConstraints(minHeight: 400),
            width: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/pink_red_stripes.jpeg'),
              repeat: ImageRepeat.repeat,
              )
            ),
          ),

          Container(
           constraints: const BoxConstraints(minHeight: 400),
            width: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/red_hearts_grid.jpeg'),
              repeat: ImageRepeat.repeat,
              )
            ),
          ),
        ]
      )
    );
  }
}