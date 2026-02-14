import 'package:flutter/material.dart';
class Ed extends StatelessWidget {
  const Ed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 400),
      width: double.maxFinite,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/red_hearts_grid.jpeg'),
        repeat: ImageRepeat.repeat,
        )
      ),
    );
  }
}