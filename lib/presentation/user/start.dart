import 'package:flutter/material.dart';
import 'package:hmtk_app/widget/button.dart';

import '../../utils/color_pallete.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Image.asset(
            'assets/bg.png',
            height: double.maxFinite,
            width: double.maxFinite,
          ),
          Align(
            child: Image.asset('assets/LOGO TK.png'),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(20),
              color: ColorPallete.greenprim,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              child: Column(
                children: [
                  MyButton(txt: 'Login'),
                  Text('or'),
                  MyButton(txt: 'Sign  Up'),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
