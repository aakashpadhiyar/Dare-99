import 'package:about/about.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(About());

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isIos = Theme.of(context).platform == TargetPlatform.iOS;

    const Widget aboutPage = AboutPage(
      title: Text('About'),
      applicationVersion: 'Version {{ version }}, build #{{ buildNumber }}',
      applicationDescription: Text(
        '10 Truths About You .',
        textAlign: TextAlign.justify,
      ),
      applicationIcon: CircleAvatar(
        backgroundImage: NetworkImage(
          'https://avatars3.githubusercontent.com/u/51253155?s=460&v=4',
        ),
        radius: 150.0,
      ),
      applicationLegalese: '© Aakash Padhiyar, {{ year }}',
      children: <Widget>[
        MarkdownPageListTile(
          filename: 'asset/README.md',
          title: Text('View Readme'),
          icon: Icon(Icons.all_inclusive),
        ),
        MarkdownPageListTile(
          filename: 'asset/LICENSE.md',
          title: Text('View License'),
          icon: Icon(Icons.description),
        ),
        LicensesPageListTile(
          title: Text('Open source Licenses'),
          icon: Icon(Icons.favorite),
        ),
      ],
    );

    if (isIos) {
      return const CupertinoApp(
        title: 'About Dare-99',
        home: aboutPage,
      );
    }

    return const MaterialApp(
      title: 'About Dare-99',
      home: aboutPage,
    );
  }
}
