import 'package:flutter/material.dart';

typedef AdventButtonHandler = void Function();

class AdventStarButtonWidget extends StatelessWidget {
  final String text;
  final AdventButtonHandler buttonHandler;

  const AdventStarButtonWidget({@required this.text, this.buttonHandler})
      : assert(text != null);

  @override
  Widget build(BuildContext context) => Container(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: buttonHandler,
            child: Stack(
              alignment: const Alignment(0.0, 0.0),
              children: <Widget>[
                Image.asset(
                  'images/icons/icons8-christmas-star.png',
                  height: 50.0,
                ),
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      );
}
