import 'package:flutter/material.dart';

import 'constants.dart';

class CircButton extends StatelessWidget {
  CircButton({required this.icon, required this.onPres});

  final IconData icon;

  final Function() onPres;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: activeIconColor,
      ),
      onPressed: onPres,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints: const BoxConstraints.tightFor(height: 50, width: 50),
      elevation: 20,
    );
  }
}
