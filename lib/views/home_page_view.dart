import 'package:flutter/material.dart';

import '../widgets/advents_grid.dart';
import '../widgets/app_bar.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBarWidget(title: title),
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
            const AdventsGridWidget()
          ],
        ),
      );
}
