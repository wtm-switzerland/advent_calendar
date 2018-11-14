import 'package:flutter/material.dart';

class ImageRotateWidget extends StatefulWidget {
  final Widget child;

  @override
  State<StatefulWidget> createState() => _ImageRotateWidgetState();

  const ImageRotateWidget({@required this.child}) : assert(child != null);
}

class _ImageRotateWidgetState extends State<ImageRotateWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 7),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
        animation: _animationController,
        child: widget.child,
        builder: (context, _widget) => Transform.rotate(
              angle: _animationController.value * 6.3,
              child: _widget,
            ),
      );

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
