import 'package:flutter/material.dart';

import 'constants.dart';

class MenuItem extends StatelessWidget {
  MenuItem({this.title, this.icon});

  final String? title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(
          title!,
          style: lableStyle,
        ),
        leading: Icon(icon),
      ),
    );
  }
}
