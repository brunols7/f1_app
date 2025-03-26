import 'package:flutter/material.dart';
import '../models/driver.dart';

class DriverCard extends StatefulWidget {
  
  DriverCard({required this.driver});

  final Driver driver;

  @override
  State<DriverCard> createState() => _DriverCardState();
}

class _DriverCardState extends State<DriverCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 241, 243),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8, 
            offset: Offset(0, 4), 
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 44,
                  width: 2,
                  color: widget.driver.teamColor,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.driver.firstName, style: TextStyle(
                        color: Colors.black,
                        fontSize:14,
                        fontFamily: 'f1',
                        fontWeight: FontWeight.normal
                      ),
                    ),
                    Text(widget.driver.lastName, style: TextStyle(
                        color: Colors.black,
                        fontSize:18,
                        fontFamily: 'f1',
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 236, 239, 240),
                    borderRadius: BorderRadius.circular(6)
                  ),
                  child: Padding(padding: EdgeInsets.all(1), child: Image.network('https://flagsapi.com/${widget.driver.country}/flat/64.png', height: 40)),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${widget.driver.driverNumber}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontFamily: 'f1',
                    fontWeight: FontWeight.bold
                  )
                ),
                Image.network('${widget.driver.driverImage}', height: 120,)
              ],
            )
          ],
        ),
      ),
    );
  }
}