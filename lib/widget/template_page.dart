import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  final Widget widget;

  const MyPage({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: [
        Image.asset(
          'assets/bg.png',
          height: double.maxFinite,
          width: double.maxFinite,
        ),
        widget
      ]),
    );
  }
}
