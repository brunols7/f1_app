import 'package:flutter/material.dart';
import 'team/team_card.dart';
import 'team/team_data.dart';
import 'team/team.dart';
import 'team/team_loading.dart';
import 'info_page.dart';

class TeamsPage extends StatelessWidget {
  final TeamData teamData;

  TeamsPage({required this.teamData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              'TEAMS',
              style: TextStyle(
                fontFamily: 'f1',
                fontSize: 24,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: FutureBuilder<List<Team>>(
                future: teamData.getTeams(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: TeamLoading());
                  }
                  if (snapshot.hasError) {
                    return const Center(child: Text('Erro ao carregar os times'));
                  }
                  if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(child: Text('Nenhum time encontrado'));
                  }

                  final teams = snapshot.data!;
                  return ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemCount: teams.length,
                    itemBuilder: (context, index) {
                      final team = teams[index];
                      return TeamCard(
                        teamId: team.teamId,
                        teamName: team.teamName,
                        fullTeamName: team.fullTeamName,
                        teamLogo: team.teamLogo,
                        teamColor: team.teamColor,
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}