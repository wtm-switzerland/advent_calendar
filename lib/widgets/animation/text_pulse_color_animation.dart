import 'package:flutter/material.dart';

class TextPulseColorAnimation extends StatefulWidget {
  final String text;
  final TextStyle style;

  const TextPulseColorAnimation({@required this.text, @required this.style})
      : assert(text != null);

  @override
  State<StatefulWidget> createState() => _TextPulseColorAnimationState();
}

class _TextPulseColorAnimationState extends State<TextPulseColorAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed)
              _animationController.reverse();
            else if (status == AnimationStatus.dismissed) {
              _animationController.forward();
            }
          });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) => _AnimatedText(
        text: widget.text,
        style: widget.style,
        animation: _animation,
      );

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

class _AnimatedText extends AnimatedWidget {
  final String text;
  final TextStyle style;
  final Animation<double> animation;

  static final _textScaleFactorTween = Tween<double>(begin: 1.0, end: 1.3);
  static final _colorTween = ColorTween(begin: Colors.white, end: Colors.red);

  const _AnimatedText(
      {@required this.text, @required this.style, @required this.animation})
      : assert(text != null),
        assert(style != null),
        assert(animation != null),
        super(listenable: animation);

  @override
  Widget build(BuildContext context) => Text(
        text,
        textAlign: TextAlign.center,
        style: style.merge(TextStyle(color: _colorTween.evaluate(animation))),
        textScaleFactor: _textScaleFactorTween.evaluate(animation),
      );
}
