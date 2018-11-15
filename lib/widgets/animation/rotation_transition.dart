import 'package:flutter/material.dart';

class RotationTransitionWidget extends StatefulWidget {
  final Widget child;

  const RotationTransitionWidget({@required this.child});

  @override
  State<StatefulWidget> createState() => _RotationTransitionWidgetState();
}

class _RotationTransitionWidgetState extends State<RotationTransitionWidget>
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
  Widget build(BuildContext context) => RotationTransition(
        child: widget.child,
        turns: CurvedAnimation(
            parent: _animationController, curve: Curves.elasticIn),
      );

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
