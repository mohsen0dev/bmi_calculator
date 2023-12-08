import 'package:flutter/material.dart';

import 'constants.dart';

class ButtonDown extends StatelessWidget {
  const ButtonDown({Key? key, required this.title, required this.onPres})
      : super(key: key);
  final String title;
  final Function() onPres;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPres,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: activeIconColor),
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: buttonStyle,
            ),
          ),
          margin: const EdgeInsets.only(top: 5),
          width: double.infinity,
          height: 60,
        ));
  }
}
