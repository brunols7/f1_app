import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'driver.dart';

class DriversData {
  Future<List<Driver>> getDrivers() async {
    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('drivers').get();

    return snapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      return Driver(
        driverId: data['driverId'] as int,
        teamId: data['teamId'] as int,
        firstName: data['firstName'] as String,
        lastName: data['lastName'] as String,
        driverFullName: data['driverFullName'] as String,
        driverNumber: data['driverNumber'] as int,
        country: data['country'] as String,
        driverImage: data['driverImage'] as String,
        teamColor: Color(int.parse((data['teamColor'] as String).replaceFirst('0x', ''), radix: 16)),
      );
    }).toList();
  }
}