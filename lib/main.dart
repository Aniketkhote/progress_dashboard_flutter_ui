import 'package:flutter/material.dart';
import 'package:progress_dashboard/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Progress Dashboard',
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}
