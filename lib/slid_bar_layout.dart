import 'package:bmi_calculator/slid_bar.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/imput_page.dart';

class SideBarLayout extends StatefulWidget {
  const SideBarLayout({Key? key}) : super(key: key);

  @override
  _SideBarLayoutState createState() => _SideBarLayoutState();
}

class _SideBarLayoutState extends State<SideBarLayout> {
  @override
  Widget build(BuildContext context) {
    return const Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: Stack(children: [
          InputePage(),
          SlidBar(),
        ])));
  }
}
