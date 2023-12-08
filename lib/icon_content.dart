import 'package:flutter/material.dart';

import 'constants.dart';

class iconContent extends StatelessWidget {
  const iconContent({
    required this.icon,
    required this.iconColor,
    required this.label,
  });
  final IconData icon;
  final Color iconColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 60,
          color: iconColor,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: lableStyle,
        )
      ],
    );
  }
}
