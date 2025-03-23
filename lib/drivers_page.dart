import 'package:flutter/material.dart';
import 'package:f1_app/drivers/driver_card.dart';
import 'team/team_data.dart';
import 'team/team.dart';
import 'drivers/driver.dart';
import 'drivers/drivers_data.dart';
import 'drivers/driver_card_loading.dart';
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
  final TeamData teamData = TeamData();
  final DriversData driversData = DriversData();
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      final teams = await teamData.getTeams();
      setState(() {
        selectedTeam = teams.firstWhere(
          (team) => team.teamId == widget.teamId,
          orElse: () => Team(
            teamId: -1,
            teamName: 'Equipe não encontrada',
            fullTeamName: 'Equipe não encontrada',
            teamLogo: '',
            teamColor: Colors.grey,
          ),
        );
      });

      final drivers = await driversData.getDrivers();
      setState(() {
        filteredDrivers = drivers.where((driver) => driver.teamId == widget.teamId).toList();
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
        selectedTeam = Team(
          teamId: -1,
          teamName: 'Erro ao carregar',
          fullTeamName: 'Erro ao carregar',
          teamLogo: '',
          teamColor: Colors.grey,
        );
        filteredDrivers = [];
      });
      print('Erro ao carregar dados: $e');
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
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFFFA1F00), size: 24),
        ),
        centerTitle: true,
        title: Image.asset('assets/images/f1-logo.png', height: 40),
        elevation: 0.5,
        backgroundColor: const Color(0xFFf8f4f0),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outlined, color: Color(0xFFFA1F00), size: 24),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => InfoPage()));
            },
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'DRIVERS',
              style: TextStyle(
                fontFamily: 'f1',
                fontSize: 24,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: isLoading
                  ? Center(child: DriverCardLoading())
                  : filteredDrivers.isEmpty
                      ? const Center(child: Text('Nenhum piloto encontrado'))
                      : ListView.separated(
                          itemCount: filteredDrivers.length,
                          itemBuilder: (context, index) {
                            final driver = filteredDrivers[index];
                            return DriverCard(driver: driver);
                          },
                          separatorBuilder: (context, index) => const SizedBox(height: 10),
                        ),
            ),
          ],
        ),
      ),
    );
  }
}