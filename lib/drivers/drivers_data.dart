import 'package:flutter/material.dart';
import 'driver.dart';

class DriversData{

  List<Driver> drivers = [
    
    //McLaren
    Driver(driverId: 1, teamId: 1, firstName: 'Lando', lastName: 'Norris', driverFullName: 'Lando Norris', driverNumber: 4, country: 'GB', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2023/10/Lando-Norris-F1-2023-880x880.webp', teamColor: Color(0xFFFF8000)),
    Driver(driverId: 2, teamId: 1, firstName: 'Oscar', lastName: 'Piastri', driverFullName: 'Oscar Piastri', driverNumber: 81, country: 'AU', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2023/10/Oscar-Piastri-F1-2023-880x880.webp', teamColor: Color(0xFFFF8000)),

    //Ferrari
    Driver(driverId: 3, teamId: 2, firstName: 'Charles', lastName: 'Leclerc', driverFullName: 'Charles Leclerc', driverNumber: 16, country: 'MC', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2023/10/Charles-Leclerc-F1-2023-880x880.webp', teamColor: Color(0xFFf70d1a)),
    Driver(driverId: 4, teamId: 2, firstName: 'Lewis', lastName: 'Hamilton', driverFullName: 'Lewis Hamilton', driverNumber: 44, country: 'GB', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2023/10/Lewis-Hamilton-F1-2024-880x880.webp', teamColor: Color(0xFFf70d1a)),

    //RedBull
    Driver(driverId: 5, teamId: 3, firstName: 'Max', lastName: 'Verstappen', driverFullName: 'Max Verstappen', driverNumber: 1, country: 'NL', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2023/10/Max-Verstappen-F1-2023-880x880.webp', teamColor: Color(0xff23326a)),
    Driver(driverId: 6, teamId: 3, firstName: 'Liam', lastName: 'Lawson', driverFullName: 'Liam Lawson', driverNumber: 30, country: 'NZ', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2024/01/Liam-Lawson-F1-2024-Red-Bull-880x880.webp', teamColor: Color(0xff23326a)),

    //Mercedes
    Driver(driverId: 7, teamId: 4, firstName: 'George', lastName: 'Russell', driverFullName: 'George Russell', driverNumber: 63, country: 'GB', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2023/10/George-Russell-F1-2023-880x880.webp', teamColor: Color(0xff00a19c)),
    Driver(driverId: 8, teamId: 4, firstName: 'Andrea Kimi', lastName: 'Antonelli', driverFullName: 'Andrea Kimi Antonelli', driverNumber: 12, country: 'IT', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2024/08/Kimi-Antonelli-F1-2024-New-880x880.webp', teamColor: Color(0xff00a19c)),

    //Aston Martin
    Driver(driverId: 9, teamId: 5, firstName: 'Fernando', lastName: 'Alonso', driverFullName: 'Fernando Alonso', driverNumber: 14, country: 'ES', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2023/10/Fernando-Alonso-F1-2023-880x880.webp', teamColor: Color(0xff00594f)),
    Driver(driverId: 10, teamId: 5, firstName: 'Lance', lastName: 'Stroll', driverFullName: 'Lance Stroll', driverNumber: 18, country: 'CA', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2023/10/Lance-Stroll-F1-2023-880x880.webp', teamColor: Color(0xff00594f)),

    //Alpine
    Driver(driverId: 11, teamId: 6, firstName: 'Pierre', lastName: 'Gasly', driverFullName: 'Pierre Gasly', driverNumber: 10, country: 'FR', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2023/10/Piere-Gasley-F1-2023-880x880.webp', teamColor: Color(0xffFD4BC7)),
    Driver(driverId: 12, teamId: 6, firstName: 'Jack', lastName: 'Doohan', driverFullName: 'Jack Doohan', driverNumber: 7, country: 'AU', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2024/08/Jack-Doohan-F1-2024-880x880.webp', teamColor: Color(0xffFD4BC7)),

    //Haas
    Driver(driverId: 13, teamId: 7, firstName: 'Esteban', lastName: 'Ocon', driverFullName: 'Esteban Ocon', driverNumber: 31, country: 'FR', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2023/10/Esteban-Ocon-F1-2024-880x880.webp', teamColor: Color(0xfff62039 )),
    Driver(driverId: 14, teamId: 7, firstName: 'Oliver', lastName: 'Bearman', driverFullName: 'Oliver Bearman', driverNumber: 87, country: 'GB', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2024/03/Oliver-Bearman-F1-2024-NEW-880x880.webp', teamColor: Color(0xfff62039)),  

    //Racing Bulls
    Driver(driverId: 15, teamId: 8, firstName: 'Yuki', lastName: 'Tsunoda', driverFullName: 'Yuki Tsunoda', driverNumber: 22, country: 'JP', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2023/10/Yuki-Tsunoda-F1-2024-880x880.webp', teamColor: Color(0xff041F3D)),
    Driver(driverId: 16, teamId: 8, firstName: 'Isack', lastName: 'Hadjar', driverFullName: 'Isack Hadjar', driverNumber: 6, country: 'FR', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2024/12/Isack-Hadjar-F1-2024-RB-880x880.webp', teamColor: Color(0xff041F3D)),

    //Williams
    Driver(driverId: 17, teamId: 9, firstName: 'Alex', lastName: 'Albon', driverFullName: 'Alex Albon', driverNumber: 23, country: 'TH', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2023/10/Alex-Albon-F1-2024-880x880.webp', teamColor: Color(0xff00a3e0)),
    Driver(driverId: 18, teamId: 9, firstName: 'Carlos', lastName: 'Sainz', driverFullName: 'Carlos Sainz', driverNumber: 55, country: 'ES', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2023/10/Carlos-Sainz-F1-2024-880x880.webp', teamColor: Color(0xff00a3e0)),

    //Sauber
    Driver(driverId: 19, teamId: 10, firstName: 'Nico', lastName: 'Hulkenberg', driverFullName: 'Nico Hulkenberg', driverNumber: 27, country: 'DE', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2023/10/Nico-Hulkenberg-F1-2024-880x880.webp', teamColor: Color(0xff00e701)),
    Driver(driverId: 20, teamId: 10, firstName: 'Gabriel', lastName: 'Bortoleto', driverFullName: 'Gabriel Bortoleto', driverNumber: 5, country: 'BR', driverImage: 'https://www.formulaonehistory.com/wp-content/uploads/2024/11/Gabriel-Bortoleto-F1-2024-880x880.webp', teamColor: Color(0xff00e701)),
  ];
  
}