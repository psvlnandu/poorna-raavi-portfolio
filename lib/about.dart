import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';


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
                      const Text(
                      "About me",
                        style: TextStyle(
                          fontSize: 64,
                      Expanded( // This Expanded widget will contain your text content
                        flex: 3, // Adjust flex to control width ratio with the image
                        child: Column( // Use a Column to stack the two Text widgets vertically
                          crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                          children: [
                            const Text(
                            "About me",
                              style: TextStyle(
                                fontSize: 64,
                              ),
                            ),
                            const SizedBox(height: 30), // Vertical spacing between the two text elements
                            
                            const Text(
                              "I'm Casey — an interior stylist passionate about designing homes...",
                              style: TextStyle(fontSize: 18, height: 1.5),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      
                      const Text(
                        "I'm Casey — an interior stylist passionate about designing homes...",
                        style: TextStyle(fontSize: 18, height: 1.5),
                      ),
                      const Spacer(),
                      // const SizedBox(width: 50),
                      const SizedBox(width: 50), // Horizontal spacing between the text column and the image
                      Expanded(
                        flex: 2,
                        flex: 2, // Adjust flex to control width ratio with the text
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 4),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/pink_red_stripes.jpeg'),
                              image: AssetImage('assets/images/profile.jpg'), // Assuming 'profile.jpg' is your profile image
                              fit: BoxFit.cover,
                            ),
                          ),
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