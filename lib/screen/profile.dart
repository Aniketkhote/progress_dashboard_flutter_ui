import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 75,
                  backgroundImage: NetworkImage(
                      'https://www.w3schools.com/howto/img_avatar2.png'),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      child: Text('5'),
                      radius: 15,
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            'Harrison Phillips',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          Text(
            'Business analyst',
            style: TextStyle(
              color: Colors.black38,
              fontSize: 14,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get 10% sell prize',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'for <<Spanish A2>> course',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.orange,
                )
              ],
            ),
          ),
          Text(
            'Course Progress',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          CourseProgressBox(
            progress: '63%',
            icon: FontAwesomeIcons.pencilAlt,
            color: Colors.indigoAccent[700],
            heading: 'Grammer',
            subHeading: 'Learn new rules',
          ),
          CourseProgressBox(
            progress: '78%',
            icon: FontAwesomeIcons.language,
            color: Colors.orange,
            heading: 'Dictionary',
            subHeading: 'Learn 5 new words',
          ),
          CourseProgressBox(
            progress: '34%',
            icon: FontAwesomeIcons.bookOpen,
            color: Colors.red,
            heading: 'Reading',
            subHeading: 'Train your skills',
          ),
        ],
      ),
    );
  }
}

class CourseProgressBox extends StatelessWidget {
  final String progress;
  final Color color;
  final IconData icon;
  final String heading;
  final String subHeading;

  const CourseProgressBox(
      {Key key,
      this.progress,
      this.color,
      this.icon,
      this.heading,
      this.subHeading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Text(
            progress,
            style: TextStyle(color: color, fontSize: 18),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: color,
            ),
            child: FaIcon(
              icon,
              color: Colors.white,
              size: 20,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                subHeading,
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
