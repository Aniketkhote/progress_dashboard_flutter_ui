import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Progress Dashboard',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomBox(
                      color: Color(0xff5843BE),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Deadline',
                              style: TextStyle(
                                color: Colors.white60,
                              ),
                              children: [
                                TextSpan(
                                  text: ' 12:00',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Exam Unit - 5',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'English for begginers',
                            style: TextStyle(
                              color: Colors.white60,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: CircleAvatar(
                                      radius: 17,
                                      backgroundColor: Colors.white,
                                      child: Text('8+'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: CircleAvatar(
                                      radius: 17,
                                      backgroundImage: NetworkImage(
                                          'https://www.w3schools.com/howto/img_avatar2.png'),
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 17,
                                    backgroundImage: NetworkImage(
                                        'https://www.w3schools.com/howto/img_avatar.png'),
                                  ),
                                ],
                              ),
                              Text(
                                "Start Testing",
                                style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomBox(
                      color: Color(0xffffe7de),
                      child: CustomSmallBox(
                        color: Colors.orange,
                        heading: 'Homework',
                        body: 'For today\'s \nlesson',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomBox(
                      color: Color(0xfff8c9fee).withOpacity(.3),
                      child: CustomSmallBox(
                        color: Colors.indigoAccent[400],
                        heading: 'Reading',
                        body: '25 words per \nweek',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Group Info',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                FaIcon(
                                  FontAwesomeIcons.bell,
                                  size: 20,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                            Text(
                              '13 Students in the group',
                              style: TextStyle(color: Colors.black54),
                            ),
                            CustomBox(
                              color: Colors.orange[700].withOpacity(.8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Group Homework',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '5 Students for your group \nonline now.',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.white70,
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Today\'s lesson',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '12:00',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Text(
                              'Unit 6 - Articles',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.language,
                            color: Colors.orange,
                            size: 30,
                          ),
                          Text(
                            'English for \nbeginners',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.only(left: 7, bottom: 3),
                            child: Text(
                              '75%',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                          LinearPercentIndicator(
                            percent: .75,
                            lineHeight: 8,
                            width: 250,
                            backgroundColor: Colors.black12,
                            progressColor: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomShadowBox(
                      icon: FontAwesomeIcons.pencilAlt,
                      iconColor: Colors.indigo,
                      heading: 'Grammer',
                      subHeading: '+30 Grammer rules',
                    ),
                  ),
                  Expanded(
                    child: CustomShadowBox(
                      icon: FontAwesomeIcons.language,
                      iconColor: Colors.red,
                      heading: 'Dictionary',
                      subHeading: '+10 New words',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomShadowBox extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String heading;
  final String subHeading;

  const CustomShadowBox(
      {Key key, this.icon, this.iconColor, this.heading, this.subHeading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, right: 20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  FaIcon(
                    icon,
                    size: 20,
                    color: iconColor,
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        heading,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        subHeading,
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  )
                ],
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBox extends StatelessWidget {
  final Color color;
  final Widget child;

  const CustomBox({this.color, this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.only(right: 20, top: 20, bottom: 20),
      padding: EdgeInsets.all(20),
      child: child,
    );
  }
}

class CustomSmallBox extends StatelessWidget {
  final Color color;
  final String heading;
  final String body;

  const CustomSmallBox({Key key, this.color, this.heading, this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.check_circle,
          color: color,
        ),
        SizedBox(height: 30),
        Text(
          heading,
          style: TextStyle(
            color: color,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10),
        Text(
          body,
          style: TextStyle(
            color: color,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
