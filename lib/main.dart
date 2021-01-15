import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'MontserratRegular'),
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            IntrinsicHeight(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      child: Text(
                        "Coding step by step",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.blueGrey[800],
                            fontFamily: 'MontserratBold'),
                      ),
                      padding: EdgeInsets.fromLTRB(10, 40, 0, 0),
                    ),
                    Padding(
                      child: Text(
                        "Programming is fun when it's learnt right",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blueGrey[400],
                            fontFamily: 'MontserratRegular'),
                      ),
                      padding: EdgeInsets.fromLTRB(10, 8, 0, 30),
                    ),
                  ]),
            ),
            IntrinsicHeight(
              child: Row(children: [
                Flexible(
                  flex: 1,
                  child: CourseCard(
                      level: "BASIC",
                      title: "Python",
                      duration: "7-30 Days",
                      color: Color(0xff8E97FD),
                      textColor: Color(0xffFFECCC),
                      image: Image(
                        image: AssetImage('assets/icons/python.png'),
                      )),
                ),
                Flexible(
                  flex: 1,
                  child: CourseCard(
                      level: "BASIC",
                      title: "JavaScript",
                      duration: "12-35 Days",
                      color: Color(0xffFFC97E),
                      textColor: Color(0xff3F414E),
                      image: Image(
                        image: AssetImage('assets/icons/js.png'),
                      )),
                ),
              ]),
            ),
            IntrinsicHeight(
              child: Row(children: [
                Flexible(
                  flex: 1,
                  child: CourseCard(
                      level: "BASIC",
                      title: "CSS",
                      duration: "7-27 Days",
                      color: Color(0xffFA6E5A),
                      textColor: Color(0xffFFECCC),
                      image: Image(
                        image: AssetImage('assets/icons/css.png'),
                      )),
                ),
                Flexible(
                  flex: 1,
                  child: CourseCard(
                      level: "Crash Course",
                      title: "HTML",
                      duration: "1 Day",
                      color: Color(0xff6CB28E),
                      textColor: Color(0xffFFECCC),
                      image: Image(
                        image: AssetImage('assets/icons/html.png'),
                      )),
                ),
              ]),
            ),
            IntrinsicHeight(
              child: Row(children: [
                Flexible(
                  flex: 1,
                  child: HorizontalCard(
                      level: "BASIC",
                      title: "CSS",
                      color: Color(0xff3B3A55),
                      textColor: Color(0xffFFECCC),
                      image: Image(
                        image: AssetImage('assets/icons/bottom-cloud.png'),
                      )),
                ),
              ]),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
          ],
        ),
        //body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //   Padding(
        //     child: Text(
        //       "Coding step by step",
        //       style: TextStyle(
        //           fontSize: 28,
        //           color: Colors.blueGrey[800],
        //           fontFamily: 'MontserratBold'),
        //     ),
        //     padding: EdgeInsets.fromLTRB(10, 80, 0, 0),
        //   ),
        //   Padding(
        //     child: Text(
        //       "Programming is fun when it's learnt right",
        //       style: TextStyle(
        //           fontSize: 16,
        //           color: Colors.blueGrey[400],
        //           fontFamily: 'MontserratRegular'),
        //     ),
        //     padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
        //   ),
        // ]

        //GridView.count(
        //    crossAxisCount: 2, children: [Text("Hi"), Text("Hello")])
        //]),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard(
      {Key key,
      this.level,
      this.title,
      this.duration,
      this.color,
      this.image,
      this.textColor})
      : super(key: key);

  final String level;
  final String title;
  final String duration;
  final Color color;
  final Image image;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 280,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Card(
              color: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 115,
                      child: image,
                    ),
                  ),
                  Padding(
                    child: Text(
                      level,
                      style: TextStyle(
                          fontSize: 14,
                          color: textColor,
                          fontFamily: 'MontserratBold'),
                    ),
                    padding: EdgeInsets.fromLTRB(18, 93, 0, 0),
                  ),
                  Padding(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 28,
                          color: textColor,
                          fontFamily: 'MontserratLight'),
                    ),
                    padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
                  ),
                  Padding(
                    child: Text(
                      duration,
                      style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontFamily: 'MontserratSemiBold'),
                    ),
                    padding: EdgeInsets.fromLTRB(15, 210, 0, 0),
                  ),
                  Padding(
                    child: RaisedButton(
                      color: Color(0xffEBEAEC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Text(
                        "Start",
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(95, 195, 0, 0),
                  ),
                ],
              )),
        ));
  }
}

class HorizontalCard extends StatelessWidget {
  const HorizontalCard(
      {Key key,
      this.level,
      this.title,
      this.duration,
      this.color,
      this.image,
      this.textColor})
      : super(key: key);

  final String level;
  final String title;
  final String duration;
  final Color color;
  final Image image;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Card(
              color: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      child: image,
                    ),
                  ),
                  Padding(
                    child: Text(
                      level,
                      style: TextStyle(
                          fontSize: 14,
                          color: textColor,
                          fontFamily: 'MontserratRegular'),
                    ),
                    padding: EdgeInsets.fromLTRB(28, 55, 0, 0),
                  ),
                  Padding(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 22,
                          color: textColor,
                          fontFamily: 'MontserratBold'),
                    ),
                    padding: EdgeInsets.fromLTRB(25, 24, 0, 0),
                  ),
                  Padding(
                    child: RaisedButton(
                      color: Color(0xffEBEAEC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Text(
                        "Start",
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(275, 26, 0, 0),
                  ),
                ],
              )),
        ));
  }
}
