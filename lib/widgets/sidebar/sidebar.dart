import 'package:flutter/material.dart';
import 'package:progress_dashboard/widgets/sidebar/src/logo.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Logo(),
        Expanded(child: Menu()),
      ],
    );
  }
}

class Menu extends StatelessWidget {
  final List<IconData> icon = [
    Icons.home,
    Icons.dashboard,
    Icons.person,
    Icons.settings
  ];
  final bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: icon.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Icon(
                icon[index],
                color: !isActive
                    ? Colors.blueGrey.withOpacity(.5)
                    : Colors.blue[600],
              ),
            );
          },
        ),
        SizedBox(height: 100),
        Icon(
          Icons.logout,
          color: Colors.blueGrey[800],
        )
      ],
    );
  }
}
