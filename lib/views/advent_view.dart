import 'package:flutter/material.dart';

import '../actions/user_actions.dart';
import '../data/christmas_data.dart';

class AdventView extends StatelessWidget {
  final int adventNumber;
  final ChristmasDataType christmasDataType;

  static const _textShadow = <Shadow>[
    Shadow(
      offset: Offset(3.0, 3.0),
      blurRadius: 3.0,
      color: Color.fromARGB(255, 0, 0, 0),
    ),
    Shadow(
      offset: Offset(3.0, 3.0),
      blurRadius: 8.0,
      color: Color.fromARGB(125, 0, 0, 255),
    ),
  ];

  const AdventView(
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
            SafeArea(
                child: Align(
              alignment: Alignment.topCenter,
              child: Builder(
                builder: (context) => RaisedButton(
                      color: Colors.pinkAccent,
                      child: const Text('Play Christmas Song'),
                      elevation: 8.0,
                      shape: const BeveledRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      onPressed: () async {
                        await UserActions.launchUrl(context,
                            ChristmasData.musicUrlList[adventNumber - 1]);
                      },
                    ),
              ),
            ))
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
            shadows: _textShadow,
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
              shadows: _textShadow,
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
            shadows: _textShadow,
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
              shadows: _textShadow,
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
                shadows: _textShadow,
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
              shadows: _textShadow,
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
