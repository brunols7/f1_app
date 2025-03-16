import 'package:flutter/material.dart';

import 'team.dart';

class TeamData {

  final List<Team> teams = [
    Team(
      teamId: 1,
      teamName: 'McLaren',
      fullTeamName: 'McLaren Formula 1 Team',
      teamLogo: 'assets/images/teams/mclaren.png',
      teamColor: Colors.black
    ),
    Team(
      teamId: 2,
      teamName: 'Ferrari',
      fullTeamName: 'Scuderia Ferrari',
      teamLogo: 'assets/images/teams/ferrari.png',
      teamColor: Color(0xFFf70d1a)
    ),
    Team(
      teamId: 3,
      teamName: 'Red Bull',
      fullTeamName: 'Red Bull Racing',
      teamLogo: 'assets/images/teams/redbull.png',
      teamColor: Color(0xff23326a)
    ),
    Team(
      teamId: 4,
      teamName: 'Mercedes',
      fullTeamName: 'Mercedes-AMG Petronas Formula One Team',
      teamLogo: 'assets/images/teams/mercedes.png',
      teamColor: Color(0xff00a19c)
    ),
    Team(
      teamId: 5,
      teamName: 'Aston Martin',
      fullTeamName: 'Aston Martin Aramco Cognizant Formula One Team',
      teamLogo: 'assets/images/teams/astonmartin.png',
      teamColor: Color(0xff00594f)
    ),
    Team(
      teamId: 6,
      teamName: 'Alpine',
      fullTeamName: 'BWT Alpine F1 Team',
      teamLogo: 'assets/images/teams/alpine.png',
      teamColor: Color(0xffFD4BC7)
    ),
    Team(
      teamId: 7,
      teamName: 'Haas',
      fullTeamName: 'MoneyGram Haas F1 Team',
      teamLogo: 'assets/images/teams/haas.png',
      teamColor: Color(0xff777777)
    ),
    Team(
      teamId: 8,
      teamName: 'Racing Bulls',
      fullTeamName: 'Visa Cash App Racing Bulls Formula One Team',
      teamLogo: 'assets/images/teams/racingbulls.png',
      teamColor: Color(0xff041F3D)
      
    ),
    Team(
      teamId: 9,
      teamName: 'Williams',
      fullTeamName: 'Atlassian Williams Racing',
      teamLogo: 'assets/images/teams/williams.png',
      teamColor: Color(0xff041E42)
    ),
    Team(
      teamId: 10,
      teamName: 'Sauber',
      fullTeamName: 'Stake F1 Team Kick Sauber',
      teamLogo: 'assets/images/teams/sauber.png',
      teamColor: Color(0xff24272c)
    ),
  ];

}