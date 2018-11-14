import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';

import 'views/home_page_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final _analyticsNavigatorObserver =
      FirebaseAnalyticsObserver(analytics: FirebaseAnalytics());

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Christmas Advent Calendar',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const HomePageView(title: 'Christmas Advent Calendar'),
        navigatorObservers: [
          _analyticsNavigatorObserver,
        ],
      );
}
