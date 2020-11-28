import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: Color(0xffdce7f3),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Text(
        'P.',
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w700, color: Colors.orange),
      ),
    );
  }
}
