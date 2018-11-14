import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

import '../data/christmas_data.dart';
import '../views/advent_view.dart';
import 'advent_special_button.dart';
import 'advent_star_button.dart';

class AdventsGridWidget extends StatelessWidget {
  const AdventsGridWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GridView.count(
        crossAxisCount:
            MediaQuery.of(context).orientation == Orientation.portrait ? 4 : 6,
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
                  FirebaseAnalytics().logEvent(
                      name: 'star_advent',
                      parameters: {'advent_number': index + 1});
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: const RouteSettings(name: '/advent_star'),
                          builder: (context) => AdventView(
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
                FirebaseAnalytics().logEvent(
                    name: 'special_advent',
                    parameters: {'advent_number': index + 1});
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: const RouteSettings(name: '/advent_special'),
                        builder: (context) => AdventView(
                              adventNumber: index + 1,
                              christmasDataType: contentType,
                            )));
              });
        }),
      );
}
