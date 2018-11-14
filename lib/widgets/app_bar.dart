import 'package:flutter/material.dart';

import '../views/about_app_view.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    @required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) => AppBar(
        title: Text(title),
        actions: <Widget>[
          PopupMenuButton<_MenuItem>(
              onSelected: (menuItem) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: const RouteSettings(name: '/about'),
                        builder: (context) => AboutAppView()));
              },
              itemBuilder: (context) => _buildMenu.entries
                  .map((entry) => PopupMenuItem<_MenuItem>(
                        value: entry.key,
                        child: Text(entry.value),
                      ))
                  .toList()),
        ],
      );

  // Flutter documentation for AppBar.preferredSize says:
  // "the sum of kToolbarHeight and the bottom widget's preferred height".
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

enum _MenuItem { about }

Map<_MenuItem, String> _buildMenu = <_MenuItem, String>{}..[_MenuItem.about] =
    'About';
