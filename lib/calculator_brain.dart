import 'dart:math';
import 'package:flutter/cupertino.dart';

import 'constants.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  late double _bmi;

  String CalculateBMI() {
    _bmi = weight / (pow((height / 100), 2));
    return _bmi.toStringAsFixed(1);
  }

  String GetResult() {
    if (_bmi >= 35) {
      return 'چاقی مفرط';
    } else if (_bmi >= 30) {
      return 'چاق';
    } else if (_bmi >= 25) {
      return 'اضافه وزن';
    } else if (_bmi > 18.5) {
      return 'نرمال';
    } else {
      return 'کمبود وزن';
    }
  }

  String GetResultPretation() {
    if (_bmi >= 35) {
      return 'متاسفانه وزن شما بیش از حد زیاد می باشد. با مراجعه به پزشک در صورت نیاز میتوانید  برای جراحی لاغری اقدام کنید';
    } else if (_bmi >= 30) {
      return ' شما چاق هستید و این اضافه وزن برای سلامتی شما مضر است. با مشورت پزشک برای  کاهش وزن خود اقدام کنید';
    } else if (_bmi >= 25) {
      return 'شما دارای اضافه وزن هستید. اما جای نگرانی نیست. با رعایت رژیم غذایی مناسب و ورزش میتوانید به وزن ایده آل برسید';
    } else if (_bmi > 24) {
      return 'نقطه ایده آل همینجاست. با حفظ رژیم غذایی مناسب و ورزش، وزن خود را به مقدار کمی کاهش دهید';
    } else if (_bmi > 20) {
      return 'نقطه ایده آل همینجاست. با حفظ رژیم غذایی مناسب و ورزش، وزن خود را در این محدوده حفظ نمایید';
    } else if (_bmi > 18.5) {
      return 'نقطه ایده آل همینجاست. با حفظ رژیم غذایی مناسب و ورزش، وزن خود را مقداری افزایش دهید';
    } else {
      return 'بهتر است با پزشک در مورد وزن پایین مشورت کنید';
    }
  }

  Color GetResultColor() {
    if (_bmi >= 25) {
      return resultVereyUplColor;
    } else if (_bmi > 18.5) {
      return resultNormalColor;
    } else {
      return resultdownlColor;
    }
  }
}
