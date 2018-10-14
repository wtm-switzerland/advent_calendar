import 'package:advent_calendar/advent_star_button.dart';
import 'package:advent_calendar/advent_view.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Christmas Advent Calendar',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const MyHomePage(title: 'Christmas Advent Calendar'),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Stack(
          children: <Widget>[
            Image.asset(
              'images/christmas-background.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            GridView.count(
              crossAxisCount: 4,
              children: List.generate(
                  24,
                  (index) => AdventStarButtonWidget(
                        text: (index + 1).toString(),
                        buttonHandler: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  settings:
                                      const RouteSettings(name: '/advent'),
                                  builder: (context) => AdventViewWidget(
                                        adventNumber: index + 1,
                                      )));
                        },
                      )),
            )
          ],
        ),
      );
}
