import 'package:flutter/material.dart';

import '../theme/Colors.dart';
class Catagory extends StatelessWidget {
  const Catagory({Key? key, required this.IconData, this.text, this.iconColor});

  final IconData;
  final String? text;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(11),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: shadowColor.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1),
              )
            ],
          ),
          child: Icon(
            IconData,
            color: iconColor,
          ),
        ),
        SizedBox(height: 10),
        Text(text ?? ''),
      ],
    );
  }
}
