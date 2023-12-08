import 'package:flutter/material.dart';

import 'constants.dart';
import 'menuItem.dart';

class SlidBar extends StatefulWidget {
  const SlidBar({Key? key}) : super(key: key);

  @override
  _SlidBarState createState() => _SlidBarState();
}

class _SlidBarState extends State<SlidBar> with SingleTickerProviderStateMixin {
  bool isSlidbarOpen = false;
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    var scrinW = MediaQuery.of(context).size.width;
    var scrinH = MediaQuery.of(context).size.height;
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      left: isSlidbarOpen ? 70 : scrinW - 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: scrinW - 100,
            height: scrinH,
            color: const Color(0xf51d1e43),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              const SizedBox(
                height: 100,
              ),
              const ListTile(
                title: Text(
                  'BMI App',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.w800),
                ),
                leading: CircleAvatar(
                  child: Icon(
                    Icons.app_registration,
                    size: 30,
                  ),
                ),
                subtitle: Text(
                  'نرم افزار شاخص توده بدنی',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.w800),
                ),
              ),
              const Divider(
                height: 25,
                color: Colors.white,
              ),
              MenuItem(icon: Icons.settings, title: 'تنظیمات'),
              MenuItem(icon: Icons.phone_android, title: 'برنامه های دیگر'),
              MenuItem(icon: Icons.person, title: 'نویسنده: محسن فرجی'),
              MenuItem(icon: Icons.info_outline, title: 'نسخه: 1.0.0'),
            ]),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isSlidbarOpen = !isSlidbarOpen;
              });
            },
            child: ClipPath(
              clipper: CustomMenuClipper(),
              child: Container(
                width: 35,
                height: 110,
                alignment: Alignment.center,
                color: activeIconColor,
                child: AnimatedIcon(
                  size: 30,
                  icon: isSlidbarOpen
                      ? AnimatedIcons.close_menu
                      : AnimatedIcons.menu_close,
                  progress: _animationController.view,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(width, 0);
    path.quadraticBezierTo(width, 8, width - 10, 16);

    path.quadraticBezierTo(0, width, 0, height / 2);
    path.quadraticBezierTo(0, height - width, width - 10, height - 16);
    path.quadraticBezierTo(width, height - 8, width, height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
