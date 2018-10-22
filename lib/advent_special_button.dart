import 'package:flutter/material.dart';

typedef AdventButtonHandler = void Function();

class AdventSpecialIconButtonWidget extends StatelessWidget {
  final String image;
  final AdventButtonHandler buttonHandler;

  const AdventSpecialIconButtonWidget(
      {@required this.image, @required this.buttonHandler})
      : assert(image != null),
        assert(buttonHandler != null);

  @override
  Widget build(BuildContext context) => Container(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: buttonHandler,
            child: Image.asset(
              image,
            ),
          ),
        ),
      );
}
