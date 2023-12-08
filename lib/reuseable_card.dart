import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.colour, required this.childCard});

  final Color colour;
  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colour,
      ),
    );
  }
}
