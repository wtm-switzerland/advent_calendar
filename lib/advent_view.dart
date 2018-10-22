import 'package:flutter/material.dart';

import 'christmas_wishes.dart';

class AdventViewWidget extends StatelessWidget {
  final int adventNumber;

  AdventViewWidget({@required this.adventNumber})
      : assert(adventNumber != null),
        assert(adventNumber < 25);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
    title: Text('Advent $adventNumber'),
  ),
        body: Stack(
          alignment: const Alignment(0.0, 0.0),
          children: <Widget>[
            Image.asset(
              'images/background/christmas-$adventNumber.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                ChristmasWishes.wishesList[adventNumber-1],
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white),
              ),
            ),
            const BackButton(),
          ],
        ),
      );
}
