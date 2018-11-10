import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../actions/user_actions.dart';

const String aboutAppData = '''
This app was created by [Katarina Sheremet](https://twitter.com/kate_sheremet) from [Women Techmakers Switzerland](https://www.meetup.com/wtm-switzerland/)

# Follow us

- [Meetup Page](https://www.meetup.com/wtm-switzerland/)
- [Twitter](https://twitter.com/wtm_ch)
- [Facebook](https://www.facebook.com/wtmch)
- [LinkedIn](https://www.linkedin.com/company/women-techmakers-switzerland/)

# Source code
Source code can be found in [WTM Switzerland Github repo](https://github.com/wtm-switzerland/advent_calendar)

''';

class AboutAppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('About App'),
        ),
        body: Builder(
          builder: (context) => Markdown(
              data: aboutAppData,
              styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context))
                  .copyWith(
                      p: const TextStyle(fontSize: 18.0, color: Colors.black)),
              onTapLink: (href) async {
                await UserActions.launchUrl(context, href);
              }),
        ),
      );
}
