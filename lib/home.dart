import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:progress_dashboard/screen/dashboard.dart';
import 'package:progress_dashboard/screen/profile.dart';
import 'package:progress_dashboard/widgets/sidebar/sidebar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          //Sidebar
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            width: 80,
            color: Color(0xffdce7f3),
            child: Sidebar(),
          ),
          //middle conent
          Expanded(
            child: SingleChildScrollView(
              child: Dashboard(),
            ),
          ),
          Container(
            width: 300,
            color: Color(0xffF5F5F5),
            child: Profile(),
          ),
        ],
      ),
    );
  }
}
