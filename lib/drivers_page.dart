import 'package:f1_app/drivers/driver_card.dart';
import 'package:flutter/material.dart';
import 'team/team_data.dart';
import 'team/team.dart';
import 'team/team_card_drivers.dart';
import 'drivers/driver.dart';

class DriversPage extends StatefulWidget {

  final int teamId;
  const DriversPage({Key? key, required this.teamId}) : super(key: key);

  @override
  State<DriversPage> createState() => _DriversPageState();
}

class _DriversPageState extends State<DriversPage> {
  Team? selectedTeam;

  @override
  void initState() {
    super.initState();
    selectedTeam = TeamData().teams.firstWhere(
      (team) => team.teamId == widget.teamId,
      orElse: () => Team(
        teamId: -1,
        teamName: 'Equipe não encontrada',
        fullTeamName: 'Equipe não encontrada',
        teamLogo: '',
        teamColor: Colors.grey,
      ),
    );
  }
  
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
          leading: IconButton(
            onPressed: ((){
              Navigator.pop(context);
            }),
            icon: Icon(Icons.arrow_back_ios, color: Color(0xFFFA1F00), size: 24),
          ),
          centerTitle: true,
          title: Image.asset('assets/images/f1-logo.png', height: 40),
          elevation: 0.5,
          backgroundColor: Color(0xFFf8f4f0),
          actions: [
            IconButton(
              icon: Icon(Icons.info_outlined, color: Color(0xFFFA1F00), size: 24),
              onPressed: ((){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DriversPage(teamId: 2)));
              }),
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (selectedTeam != null) 
                TeamCardDrivers(
                  teamId: selectedTeam!.teamId,
                  teamName: selectedTeam!.teamName,
                  fullTeamName: selectedTeam!.fullTeamName,
                  teamLogo: selectedTeam!.teamLogo,
                  teamColor: selectedTeam!.teamColor,
                )
              else 
                Text(
                  'Equipe não encontrada',
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
              Divider(height: 40, thickness: 1, color: selectedTeam!.teamColor),
              Text(
                'DRIVERS',
                style: TextStyle(
                  fontFamily: 'f1',
                  fontSize: 24,
                  color: Colors.black,
                )
              ),
              SizedBox(height: 10),
              Column(
                children:[
                  DriverCard(),
                  SizedBox(height: 20),
                  DriverCard(),
                ]
              )
            ],
          ),
        ),
      ),
    );
  }
}