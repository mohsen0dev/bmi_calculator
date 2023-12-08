import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';

class ExpandedUp extends StatefulWidget {
  const ExpandedUp({Key? key}) : super(key: key);

  @override
  State<ExpandedUp> createState() => _ExpandedUpState();
}

class _ExpandedUpState extends State<ExpandedUp> {
  @override
  Widget build(BuildContext context) {
    updateColor(Gender selectGender) {
      if (selectGender == Gender.male) {
        a = 1;
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
        mIconColor = activeIconColor;
        fIconColor = inactiveIconColor;
      } else if (selectGender == Gender.female) {
        a = 2;
        maleCardColor = inactiveCardColor;
        femaleCardColor = activeCardColor;
        fIconColor = activeIconColor;
        mIconColor = inactiveIconColor;
      }
    }

    return Expanded(
      flex: 2,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  updateColor(Gender.male);
                });
              },
              child: ReuseableCard(
                colour: maleCardColor,
                childCard: iconContent(
                  iconColor: mIconColor,
                  label: 'آقا',
                  icon: FontAwesomeIcons.mars,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  updateColor(Gender.female);
                });
              },
              child: ReuseableCard(
                colour: femaleCardColor,
                childCard: iconContent(
                  iconColor: fIconColor,
                  label: 'خانم',
                  icon: FontAwesomeIcons.venus,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
