import 'package:flutter/material.dart';

class Driver {

  int driverId;
  int teamId;
  String firstName;
  String lastName;
  String driverFullName;
  int driverNumber;
  String country;
  String driverImage;
  Color teamColor;

  Driver({
    required this.driverId,
    required this.teamId,
    required this.firstName,
    required this.lastName,
    required this.driverFullName,
    required this.driverNumber,
    required this.country,
    required this.driverImage,
    required this.teamColor
  }); 

}