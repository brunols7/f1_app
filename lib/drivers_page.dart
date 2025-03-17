import 'package:f1_app/drivers/driver_card.dart';
import 'package:flutter/material.dart';
import 'team/team_data.dart';
import 'team/team.dart';
import 'drivers/driver.dart';
import 'drivers/drivers_data.dart';
import 'info_page.dart';

class DriversPage extends StatefulWidget {

  final int teamId;
  const DriversPage({Key? key, required this.teamId}) : super(key: key);

  @override
  State<DriversPage> createState() => _DriversPageState();
}

class _DriversPageState extends State<DriversPage> {
  Team? selectedTeam;
  List<Driver> filteredDrivers = [];

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

    filteredDrivers = DriversData().drivers.where((driver) => driver.teamId == widget.teamId).toList();
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
        actions: [
          IconButton(
            icon: Icon(Icons.info_outlined, color: Color(0xFFFA1F00), size: 24),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => InfoPage()));
            },
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'DRIVERS',
              style: TextStyle(
                fontFamily: 'f1',
                fontSize: 24,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemCount: filteredDrivers.length,
                itemBuilder: (context, index) {
                  final driver = filteredDrivers[index];
                  return DriverCard(driver: driver);
                },
                separatorBuilder: (context, index) => SizedBox(height: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}