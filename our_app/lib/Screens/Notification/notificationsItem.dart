import 'package:flutter/material.dart';

import 'package:our_app/constants.dart';

class NotificationTiles extends StatelessWidget {
  final String title, subtitle;

  final bool enable;
  const NotificationTiles({
    Key key,
    this.title,
    this.subtitle,
    this.enable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: TextStyle(color: myDarkBlue)),
      subtitle: Text(subtitle, style: TextStyle(color: myLightBlue)),
      enabled: enable,
    );
  }
}
