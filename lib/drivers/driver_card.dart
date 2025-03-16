import 'package:flutter/material.dart';

class DriverCard extends StatefulWidget {
  const DriverCard({super.key});

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
        color: Color(0xFF121212),
        borderRadius: BorderRadius.circular(12),
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
                  color: Colors.green,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Gabriel', style: TextStyle(
                        color: Colors.white,
                        fontSize:14,
                        fontFamily: 'f1',
                        fontWeight: FontWeight.normal
                      ),
                    ),
                    Text('Bortoleto', style: TextStyle(
                        color: Colors.white,
                        fontSize:14,
                        fontFamily: 'f1',
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                Spacer(),
                Image.network('https://flagsapi.com/BR/flat/64.png', height: 40)
              ],
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '5',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'f1',
                    fontWeight: FontWeight.bold
                  )
                ),
                Image.network('https://www.formulaonehistory.com/wp-content/uploads/2024/11/Gabriel-Bortoleto-F1-2024.webp', height: 120,)
              ],
            )
          ],
        ),
      ),
    );
  }
}