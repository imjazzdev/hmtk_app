import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String txt;
  Function? ontap;

  MyButton({required this.txt, this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap;
      },
      child: Container(
        height: 70,
        alignment: Alignment.center,
        child: Text(
          'data',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
