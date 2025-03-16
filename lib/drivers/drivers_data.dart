import 'package:flutter/material.dart';
import 'driver.dart';

class DriversData{

  List<Driver> drivers = [
    
    //McLaren
    Driver(driverId: 1, teamId: 1, firstName: 'Lando', lastName: 'Norris', driverFullName: 'Lando Norris', driverNumber: 4, country: 'GB', driverImage: '', teamColor: Colors.black),
    Driver(driverId: 2, teamId: 1, firstName: 'Oscar', lastName: 'Piastri', driverFullName: 'Oscar Piastri', driverNumber: 81, country: 'AU', driverImage: '', teamColor: Colors.black),

    //Ferrari
    Driver(driverId: 3, teamId: 2, firstName: 'Charles', lastName: 'Leclerc', driverFullName: 'Charles Leclerc', driverNumber: 16, country: 'MC', driverImage: '', teamColor: Color(0xFFf70d1a)),
    Driver(driverId: 4, teamId: 2, firstName: 'Lewis', lastName: 'Hamilton', driverFullName: 'Lewis Hamilton', driverNumber: 44, country: 'GB', driverImage: '', teamColor: Color(0xFFf70d1a)),

    //RedBull
    Driver(driverId: 5, teamId: 3, firstName: 'Max', lastName: 'Verstappen', driverFullName: 'Max Verstappen', driverNumber: 1, country: 'NL', driverImage: '', teamColor: Color(0xff23326a)),
    Driver(driverId: 6, teamId: 3, firstName: 'Liam', lastName: 'Lawson', driverFullName: 'Liam Lawson', driverNumber: 30, country: 'NZ', driverImage: '', teamColor: Color(0xff23326a)),

    //Mercedes
    Driver(driverId: 7, teamId: 4, firstName: 'George', lastName: 'Russell', driverFullName: 'George Russell', driverNumber: 63, country: 'GB', driverImage: '', teamColor: Color(0xff00a19c)),
    Driver(driverId: 8, teamId: 4, firstName: 'Andrea Kimi', lastName: 'Antonelli', driverFullName: 'Andrea Kimi Antonelli', driverNumber: 12, country: 'IT', driverImage: '', teamColor: Color(0xff00a19c)),

    //Aston Martin
    Driver(driverId: 9, teamId: 5, firstName: 'Fernando', lastName: 'Alonso', driverFullName: 'Fernando Alonso', driverNumber: 14, country: 'ES', driverImage: '', teamColor: Color(0xff00594f)),
    Driver(driverId: 10, teamId: 5, firstName: 'Lance', lastName: 'Stroll', driverFullName: 'Lance Stroll', driverNumber: 18, country: 'CA', driverImage: '', teamColor: Color(0xff00594f)),

    //Alpine
    Driver(driverId: 11, teamId: 6, firstName: 'Pierre', lastName: 'Gasly', driverFullName: 'Pierre Gasly', driverNumber: 10, country: 'FR', driverImage: '', teamColor: Color(0xffFD4BC7)),
    Driver(driverId: 12, teamId: 6, firstName: 'Jack', lastName: 'Doohan', driverFullName: 'Jack Doohan', driverNumber: 7, country: 'AU', driverImage: '', teamColor: Color(0xffFD4BC7)),

    //Haas
    Driver(driverId: 13, teamId: 7, firstName: 'Esteban', lastName: 'Ocon', driverFullName: 'Esteban Ocon', driverNumber: 31, country: 'FR', driverImage: '', teamColor: Color(0xff777777)),
    Driver(driverId: 14, teamId: 7, firstName: 'Oliver', lastName: 'Bearman', driverFullName: 'Oliver Bearman', driverNumber: 87, country: 'GB', driverImage: '', teamColor: Color(0xff777777)),  

    //Racing Bulls
    Driver(driverId: 15, teamId: 8, firstName: 'Yuki', lastName: 'Tsunoda', driverFullName: 'Yuki Tsunoda', driverNumber: 22, country: 'JP', driverImage: '', teamColor: Color(0xff041F3D)),
    Driver(driverId: 16, teamId: 8, firstName: 'Isack', lastName: 'Hadjar', driverFullName: 'Isack Hadjar', driverNumber: 6, country: 'FR', driverImage: '', teamColor: Color(0xff041F3D)),

    //Williams
    Driver(driverId: 17, teamId: 9, firstName: 'Alex', lastName: 'Albon', driverFullName: 'Alex Albon', driverNumber: 23, country: 'TH', driverImage: '', teamColor: Color(0xff041E42)),
    Driver(driverId: 18, teamId: 9, firstName: 'Carlos', lastName: 'Sainz', driverFullName: 'Carlos Sainz', driverNumber: 55, country: 'ES', driverImage: '', teamColor: Color(0xff041E42)),

    //Sauber
    Driver(driverId: 19, teamId: 10, firstName: 'Nico', lastName: 'Hulkenberg', driverFullName: 'Nico Hulkenberg', driverNumber: 27, country: 'DE', driverImage: '', teamColor: Color(0xff24272c)),
    Driver(driverId: 20, teamId: 10, firstName: 'Gabriel', lastName: 'Bortoleto', driverFullName: 'Gabriel Bortoleto', driverNumber: 5, country: 'BR', driverImage: '', teamColor: Color(0xff24272c)),
  ];
  
}