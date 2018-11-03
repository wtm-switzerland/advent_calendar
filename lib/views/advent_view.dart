import 'package:flutter/material.dart';

import '../data/christmas_data.dart';

class AdventViewWidget extends StatelessWidget {
  final int adventNumber;
  final ChristmasDataType christmasDataType;

  const AdventViewWidget(
      {@required this.adventNumber, @required this.christmasDataType})
      : assert(adventNumber != null),
        assert(adventNumber < 25),
        assert(christmasDataType != null);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          alignment: const Alignment(0.0, 0.0),
          children: <Widget>[
            Image.asset(
              'images/background/christmas-$adventNumber.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            SafeArea(
              child: buildAdventContent(christmasDataType),
            ),
            const SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: BackButton(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );

  Widget buildAdventContent(ChristmasDataType adventData) {
    var widgetList = <Widget>[];

    switch (adventData) {
      case ChristmasDataType.story:
        widgetList.add(Text(
          ChristmasData.stories[adventNumber].title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ));
        widgetList.add(Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Text(
            ChristmasData.stories[adventNumber].content,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 22.0,
              color: Colors.white,
            ),
          ),
        ));
        break;
      case ChristmasDataType.poem:
        widgetList.add(Text(
          ChristmasData.poems[adventNumber].title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ));
        widgetList.add(Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Text(
            ChristmasData.poems[adventNumber].content,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 22.0,
              color: Colors.white,
            ),
          ),
        ));
        widgetList.add(Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              ChristmasData.poems[adventNumber].author.isEmpty
                  ? ''
                  : 'By '
                  '${ChristmasData.poems[adventNumber].author}',
              style: const TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
          ],
        ));
        break;
      default:
        widgetList.add(Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            ChristmasData.wishesList[adventNumber - 1],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ));
        break;
    }

    return Padding(
      padding: const EdgeInsets.only(top: 45.0, left: 8.0, right: 8.0),
      child: SingleChildScrollView(
        child: Column(
          children: widgetList.toList(),
        ),
      ),
    );
  }
}
