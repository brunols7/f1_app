import 'package:flutter/material.dart';
import 'team/team_card.dart';
import 'team/team.dart';
import 'team/team_data.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final TeamData teamData = TeamData();

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
          backgroundColor: Color(0xFFf8f4f0),
          elevation: 0.5,
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  itemCount: teamData.teams.length,
                  itemBuilder: (context, index){
                    final team = teamData.teams[index];
                    return TeamCard(
                      teamName: team.teamName,
                      fullTeamName: team.fullTeamName,
                      teamLogo: team.teamLogo,
                      teamColor: team.teamColor
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 10)
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
