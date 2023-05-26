import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Cursos extends StatefulWidget {
  @override
  _CursosState createState() => _CursosState();
}

class _CursosState extends State<Cursos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        title: Text('TUS CURSOS'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              transform: GradientRotation(0.5),
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFF165BAD),
                Color(0xFF40ADF1),
              ],
              stops: [0.0, 1.0], 
            ),
          ),
        ),
       actions: [
          Container(
            margin: EdgeInsets.only(right: 18.0, top: 13.0), // Ajusta los márgenes según sea necesario
            child: Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/Recurso 0.5x.png',
                width: 54.0,
                height: 54.0,
              ),
            ),
          ),
        ],        
    ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tu progreso',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F427D),
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 340,
                child: LinearPercentIndicator(
                  lineHeight: 20,
                  percent: 0.7,
                  progressColor: Color(0xFF40ADF1),
                  backgroundColor: Color(0xFFE1DBDB),
                ),
              ),
            ),
            SizedBox(height: 13),
            Container(
              margin: EdgeInsets.only(left: 22),
              child: Text(
                '3 cursos de 9 disponibles',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0F427D),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}