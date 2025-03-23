import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatelessWidget {
  InfoPage({super.key});

  final String appVersion = '1.0.2';

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Color(0xFFFA1F00), size: 24),
        ),
        centerTitle: true,
        title: Image.asset('assets/images/f1-logo.png', height: 40),
        elevation: 0.5,
        backgroundColor: Color(0xFFf8f4f0),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text(
                'INFO',
                style: TextStyle(
                  fontFamily: 'f1',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.info_outline, color: Colors.red, size: 20),
                  SizedBox(width: 5),
                  Text(
                    'Version: $appVersion',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(color: Colors.grey),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.sports_score, color: Colors.red, size: 20),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'This app provides information about Formula 1 teams and drivers. '
                      'Stay updated with team details, driver stats, and much more!',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Divider(color: Colors.grey),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () => _launchURL('https://github.com/brunols7'),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(FontAwesomeIcons.github, color: Colors.black),
                      onPressed: () => _launchURL('https://github.com/brunols7'),
                    ),
                    Text(
                      'brunols7',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => _launchURL('https://www.linkedin.com/in/brunols7'),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(FontAwesomeIcons.linkedin, color: Color(0xFF0077b5)),
                      onPressed: () => _launchURL('https://www.linkedin.com/in/brunols7'),
                    ),
                    Text(
                      'brunols7',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(color: Colors.grey),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.code, color: Colors.red, size: 20),
                  SizedBox(width: 10),
                  Text(
                    'Developed by',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Bruno Leonardo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'f1',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}