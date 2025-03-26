import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../models/team.dart';

class TeamData {
  Future<List<Team>> getTeams() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('teams').orderBy('id').get();

      if (snapshot.docs.isEmpty) {
        print('Nenhum time encontrado');
        return [];
      }

      return snapshot.docs.map((doc) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        return Team(
          teamId: data['id'] as int,
          teamName: data['name'] as String,
          fullTeamName: data['fullName'] as String,
          teamLogo: data['logo'] as String,
          teamColor: Color(int.parse(data['color'].replaceFirst('0x', ''), radix: 16)),
        );
      }).toList();
    } catch (e) {
      print("Erro ao carregar os times: $e");
      return [];
    }
  }
}