import 'package:bmi_calculator/button_down.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';

class ResulltPage extends StatelessWidget {
  ResulltPage(
      {required this.bmiResult,
      required this.textResult,
      required this.pretationResult,
      required this.colorResult});

  final String bmiResult;
  final String textResult;
  final String pretationResult;
  final Color colorResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('BMIمحاسبه شاخص توده بدنی '), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Text(
                'نتیجه محاسبات',
                style: titleStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReuseableCard(
                colour: activeCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      textResult,
                      style: TextStyle(
                          fontFamily: 'vazir',
                          fontSize: 25,
                          color: colorResult,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      bmiResult,
                      style: numberTitleStyle,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Text(
                        pretationResult,
                        style: lableStyle,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                )),
          ),
          Expanded(
              child: ButtonDown(
            onPres: () {
              Navigator.pop(context);
            },
            title: 'بازگشت',
          ))
        ],
      ),
    );
  }
}
