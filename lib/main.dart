
import 'package:flutter/material.dart';
import 'team/team_data.dart';
import 'home_page.dart';
import 'info_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final TeamData teamData = TeamData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(teamData: teamData),
        '/info': (context) => InfoPage(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFfa1f00),
        ),
        brightness: Brightness.light
      )
    );
  }
}
