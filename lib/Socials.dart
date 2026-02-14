import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Socials extends StatelessWidget{
  const Socials({super.key});

  // Helper function to launch links
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/images/blue_hearts_grid.jpeg'),
                repeat: ImageRepeat.repeat,
              ),    
            borderRadius: BorderRadius.circular(50), 
            border: Border.all(color: Colors.black12, width: 2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 20,
                offset: const Offset(0, 10), // Makes it look like it's floating
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min, // Shrinks the dock to fit the icons
            children: [
              _socialIcon(Icons.mail_outline, "mailto:raavip@clarkson.edu"),
              _socialDivider(),
              _socialIcon(Icons.code, "https://github.com/psvlnandu"),
              _socialDivider(),
              _socialIcon(Icons.work_outline, "https://www.linkedin.com/in/psvl-nandu-r/"),
              _socialDivider(),
              _socialIcon(Icons.edit_note, "https://medium.com/@raavip"),
              _socialDivider(),
              _socialIcon(Icons.cloud_download_outlined, "https://your-resume-link.com"),
            ],
          ),
      ),
      );
  
  }
  Widget _socialIcon(IconData icon, String url) {
    return IconButton(
      icon: Icon(icon, color: Colors.black87, size: 28),
      onPressed: () => _launchURL(url),
      hoverColor: Colors.red.withOpacity(0.1), // Nice feedback on web
    );
  }

  Widget _socialDivider() {
    return Container(
      height: 24,
      width: 1,
      color: Colors.black12,
      margin: const EdgeInsets.symmetric(horizontal: 8),
    );
  }
}