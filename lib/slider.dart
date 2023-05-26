import 'package:flutter/material.dart';

class Slider extends StatelessWidget {
  final String image;
  final String info;

  Slider({required this.image, this.info = ""});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(10.0),
          ),
          // child: IconContent(icon: Icono, label: info),
        ),
      ],
    );
  }
}

