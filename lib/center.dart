import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class ExpandedCenter extends StatefulWidget {
  const ExpandedCenter({Key? key}) : super(key: key);

  @override
  _ExpandedCenterState createState() => _ExpandedCenterState();
}

class _ExpandedCenterState extends State<ExpandedCenter> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: ReuseableCard(
          colour: activeCardColor,
          childCard: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'قد (سانتی متر)',
                style: lableStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(height.toString(), style: numberStyle),
                  Text('cm'),
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    thumbColor: activeIconColor,
                    overlayColor: const Color(0x35eb1555),
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 10.0),
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 30)),
                child: Slider(
                    max: 220,
                    min: 120,
                    value: height.toDouble(),
                    label: height.toString(),
                    inactiveColor: inactiveIconColor,
                    onChanged: (double value) {
                      setState(() {
                        height = value.toDouble().round();
                      });
                    }),
              )
            ],
          ),
        ));
  }
}
