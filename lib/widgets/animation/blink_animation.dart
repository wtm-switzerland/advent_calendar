import 'package:flutter/material.dart';

class BlinkAnimationWidget extends StatefulWidget {
  final Widget child;

  @override
  State<StatefulWidget> createState() => _BlinkAnimationWidgetState();

  const BlinkAnimationWidget({@required this.child}) : assert(child != null);
}

class _BlinkAnimationWidgetState extends State<BlinkAnimationWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    final curve =
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn);
    _animation = Tween(begin: 1.0, end: 0.0).animate(curve)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _animationController.forward();
        }
      });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) => FadeTransition(
        opacity: _animation,
        child: widget.child,
      );

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
