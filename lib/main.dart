import 'package:flutter/material.dart';

import 'advent_special_button.dart';
import 'advent_star_button.dart';
import 'data/christmas_data.dart';
import 'views/about_app_view.dart';
import 'views/advent_view.dart';

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
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            PopupMenuButton<_MenuItem>(
                onSelected: (menuItem) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutAppView()));
                },
                itemBuilder: (context) => _buildMenu.entries
                    .map((entry) => PopupMenuItem<_MenuItem>(
                          value: entry.key,
                          child: Text(entry.value),
                        ))
                    .toList()),
          ],
        ),
        body: Stack(
          children: <Widget>[
            Image.asset(
              MediaQuery.of(context).orientation == Orientation.portrait
                  ? 'images/background/christmas-background.jpg'
                  : 'images/background/santa-background.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            GridView.count(
              crossAxisCount:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? 4
                      : 6,
              children: List.generate(24, (index) {
                String image;
                var contentType = ChristmasDataType.wish;
                switch (index) {
                  case 3:
                    image = 'images/icons/icons8-ball-96.png';
                    contentType = ChristmasDataType.poem;
                    break;
                  case 6:
                    image = 'images/icons/icons8-stocking-96.png';
                    contentType = ChristmasDataType.poem;
                    break;
                  case 12:
                    image = 'images/icons/icons8-tree-96.png';
                    contentType = ChristmasDataType.poem;
                    break;
                  case 18:
                    image = 'images/icons/icons8-jingle-bell-48.png';
                    contentType = ChristmasDataType.story;
                    break;
                  case 21:
                    image = 'images/icons/icons8-santa-48.png';
                    contentType = ChristmasDataType.story;
                    break;
                  case 23:
                    image = 'images/icons/icons8-santa-claus-bag-96.png';
                    break;
                  default:
                    return AdventStarButtonWidget(
                      text: (index + 1).toString(),
                      buttonHandler: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                settings:
                                    const RouteSettings(name: '/advent_star'),
                                builder: (context) => AdventViewWidget(
                                      adventNumber: index + 1,
                                      christmasDataType: contentType,
                                    )));
                      },
                    );
                }
                //TODO(ksheremet): Delete repeated code
                return AdventSpecialIconButtonWidget(
                    image: image,
                    buttonHandler: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings:
                                  const RouteSettings(name: '/advent_special'),
                              builder: (context) => AdventViewWidget(
                                    adventNumber: index + 1,
                                    christmasDataType: contentType,
                                  )));
                    });
              }),
            )
          ],
        ),
      );
}

enum _MenuItem { about }

Map<_MenuItem, String> _buildMenu = <_MenuItem, String>{}..[_MenuItem.about] =
    'About';
