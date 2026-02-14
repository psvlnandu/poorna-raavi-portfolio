import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
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
                  // const SizedBox(width: 50),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black, width: 2),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/pink_red_stripes.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              )
              ),
            )
          ),
        
    );
  }
}