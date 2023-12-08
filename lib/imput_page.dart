import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:bmi_calculator/up.dart';
import 'package:flutter/material.dart';
import 'button_down.dart';
import 'constants.dart';
import 'center.dart';
import 'down.dart';

class InputePage extends StatefulWidget {
  const InputePage({Key? key}) : super(key: key);

  @override
  _InputePageState createState() => _InputePageState();
}

class _InputePageState extends State<InputePage> {
  bool isBig = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMIمحاسبه شاخص توده بدنی '),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const ExpandedUp(),
          const ExpandedCenter(),
          const ExpandedDown(),
          ButtonDown(
              title: 'محاسبه',
              onPres: () {
                if (a != 0) {
                  CalculatorBrain calc =
                      CalculatorBrain(height: height, weight: weight);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResulltPage(
                                bmiResult: calc.CalculateBMI(),
                                textResult: calc.GetResult(),
                                pretationResult: calc.GetResultPretation(),
                                colorResult: calc.GetResultColor(),
                              )));
                } else {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('خطا'),
                      content: const Text('لطفا جنسیت را انتخاب کنید'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('فهمیدم'),
                        ),
                      ],
                    ),
                  );
                }
              })
        ],
      ),
    );
  }
}
