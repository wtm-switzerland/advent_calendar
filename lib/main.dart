import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'views/home_page_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  static final _analyticsNavigatorObserver =
      FirebaseAnalyticsObserver(analytics: FirebaseAnalytics());

  @override
  Widget build(BuildContext context) {
    _firebaseMessaging
      ..requestNotificationPermissions()
      ..configure();

    return MaterialApp(
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
}
