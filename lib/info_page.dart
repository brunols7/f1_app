import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFfa1f00),
        ),
        brightness: Brightness.light
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset('assets/images/f1-logo.png', height: 40),
          elevation: 0.5,
          backgroundColor: Color(0xFFf8f4f0),
          actions: [
            IconButton(
              icon: Icon(Icons.info_outlined, color: Color(0xFFFA1F00), size: 24),
              onPressed: ((){
                
              }),
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'TEAMS',
                style: TextStyle(
                  fontFamily: 'f1',
                  fontSize: 24,
                  color: Colors.black,
                )
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}