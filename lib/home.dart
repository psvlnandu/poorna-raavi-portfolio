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
              repeat: ImageRepeat.repeat,
              )
            ),
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 60.0),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                  "About me",
                    style: TextStyle(
                      fontSize: 64,
                      fontFamily: 'Advercase',
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "I'm Casey — an interior stylist passionate about designing homes...",
                    style: TextStyle(fontSize: 18, height: 1.5),
                  ),
                  const Spacer(),
                ],
              )
              ),
            )
          ),

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