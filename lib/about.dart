import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:poorna_raavi/assets/constants/constants.dart';


class about extends StatelessWidget {
  const about({super.key});
    
  @Preview(name: 'My Stateless Component')
  @override
  Widget build(BuildContext context) {
    return Container(
            constraints: const BoxConstraints(minHeight: 400),
            width: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/about_bg01.jpeg'),
              repeat: ImageRepeat.repeat,
              )
            ),
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 60.0),
              child: DefaultTextStyle(style: const TextStyle(fontFamily: 'Advercase'),  
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded( 
                        flex: 3, 
                        child: Column( 
                          crossAxisAlignment: CrossAxisAlignment.start, 
                          children: [
                            const Text(
                            "About me",
                              style: TextStyle(
                                fontSize: 64,
                              ),
                            ),
                            const SizedBox(height: 30), 
                            
                            const Text(
                              constants.Texts.aboutDescription, // Replaced with constant
                              style: TextStyle(fontSize: 18, height: 1.5),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 50), 
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 9),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/pink_red_stripes.jpeg'), 
                              fit: BoxFit.cover,
                            ),
                          ),
                          // child: ClipRRect( 
                          //   borderRadius: BorderRadius.circular(20),
                          //   child: Image.asset( 
                          //     'assets/images/profile.jpeg',
                          //     fit: BoxFit.cover,
                          //   ),
                          // ),
                        ),
                      ),
                    ],
                  )
                  ),
                ),
            )
          );
        
    
  }
}