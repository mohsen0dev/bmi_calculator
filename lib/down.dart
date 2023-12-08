import 'dart:async';

import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'circle_button.dart';
import 'constants.dart';

class ExpandedDown extends StatefulWidget {
  const ExpandedDown({Key? key}) : super(key: key);

  @override
  _ExpandedDownState createState() => _ExpandedDownState();
}

class _ExpandedDownState extends State<ExpandedDown> {
  // int weight = 70;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: ReuseableCard(
            colour: activeCardColor,
            childCard:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                'وزن (کیلوگرم)',
                style: lableStyle,
              ),
              Text(
                weight.toString(),
                style: numberStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircButton(
                    icon: FontAwesomeIcons.minus,
                    onPres: () {
                      setState(() {
                        if (weight > 50) {
                          weight--;
                        }
                      });
                    },
                  ),
                  const SizedBox(width: 15),
                  CircButton(
                      icon: FontAwesomeIcons.plus,
                      onPres: () {
                        setState(
                          () {
                            if (weight < 130) {
                              weight++;
                            }
                          },
                        );
                      })
                ],
              ),
            ]),
          ),
        ),
        Expanded(
          child: ReuseableCard(
            colour: activeCardColor,
            childCard: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'سن (سال)',
                  style: lableStyle,
                ),
                Text(
                  age.toString(),
                  style: numberStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircButton(
                      icon: FontAwesomeIcons.minus,
                      onPres: () {
                        setState(() {
                          if (age > 20) {
                            age--;
                          }
                        });
                      },
                    ),
                    const SizedBox(width: 15),
                    CircButton(
                        icon: FontAwesomeIcons.plus,
                        onPres: () {
                          setState(
                            () {
                              if (age < 65) {
                                age++;
                              }
                            },
                          );
                        })
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

/*

 */
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewCode(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NewCode extends StatefulWidget {
  const NewCode({Key? key}) : super(key: key);

  @override
  _NewCodeState createState() => _NewCodeState();
}

class _NewCodeState extends State<NewCode> {
  late Timer timer;
  var value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
                child: Text(
              'value $value',
              style: const TextStyle(fontSize: 40),
            )),
          ),
          onTapDown: (TapDownDetails details) {
            print('down');
            timer = Timer.periodic(const Duration(milliseconds: 500), (t) {
              setState(() {
                value++;
              });
              print('value $value');
            });
          },
          onTapUp: (TapUpDetails details) {
            print('up');
            timer.cancel();
          },
          onTapCancel: () {
            print('cancel');
            timer.cancel();
          },
        ),
      ),
    );
  }
}
