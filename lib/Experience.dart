import 'package:flutter/material.dart';

class Experience extends StatelessWidget{
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 400),
      width: double.maxFinite,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/pink_red_stripes.jpeg'),
        repeat: ImageRepeat.repeat,
        )
      ),
    );
  }
}