import 'package:flutter/material.dart';

class AdventViewWidget extends StatelessWidget {

  final int adventNumber;

  AdventViewWidget({@required this.adventNumber}) :
        assert(adventNumber!=null), assert(adventNumber<24);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text('Advent $adventNumber'),),
      body: Image.asset(
        'images/christmas-$adventNumber.jpg',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
    );

}