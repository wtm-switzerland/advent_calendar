import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UserActions {
  static Future<void> launchUrl(BuildContext context, String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false);
    } else {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('Could not launch url $url'),
        duration: Duration(seconds: 5),
      ));
    }
  }

  static void adventNotAvailableSnackBar(BuildContext context, int index) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('Try it on ${index + 1} '
          'of December!'),
      duration: Duration(seconds: 3),
    ));
  }
}
