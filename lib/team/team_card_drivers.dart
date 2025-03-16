import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../drivers_page.dart';

class TeamCardDrivers extends StatelessWidget {
  const TeamCardDrivers(
    {required this.teamId, required this.teamName, required this.fullTeamName, required this.teamLogo, required this.teamColor}
  );

  final int teamId;
  final String teamName;
  final String fullTeamName;
  final String teamLogo;
  final Color teamColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        //color: Color(0xFF121212),
        gradient: LinearGradient(
          colors: [teamColor, Color(0xFF2C3E50)],
          begin: Alignment(-0.7, 0),
          end: Alignment(1, 1)
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(teamLogo, height: 50)
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    teamName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  AutoSizeText(
                    fullTeamName,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.white,
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}