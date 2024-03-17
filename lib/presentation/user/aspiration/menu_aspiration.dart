import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:hmtk_app/presentation/user/aspiration/menu_riwayat_aspirasi.dart';
import 'package:hmtk_app/presentation/user/home.dart';
import 'package:hmtk_app/widget/button.dart';
import 'package:hmtk_app/widget/main_navigator.dart';
import 'package:hmtk_app/widget/template_page.dart';

class MenuAspiration extends StatelessWidget {
  const MenuAspiration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPage(
          widget: ListView(
        padding: EdgeInsets.all(25),
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(0, 5))
                ]),
                child: MyButton(
                  txt: 'Input Aspirasi',
                  width: 150,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MenuRiwayatAspirasi(),
                      ));
                },
                child: MyButton(
                  txt: 'Riwayat Aspirasi',
                  width: 150,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Input Response',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: Text(
                    'Judul',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 200,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none),
                      maxLines: 5,
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: Text(
                    'Isi Tanggapan',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 200,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none),
                      maxLines: 5,
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            child: InkWell(
              onTap: () {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.success,
                  animType: AnimType.rightSlide,
                  title: 'Success!',
                  desc: 'Thank you for you aspiration',
                  btnOkOnPress: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainNavigator(),
                        ),
                        (route) => false);
                  },
                ).show();
              },
              child: MyButton(txt: 'Kirim', height: 40),
            ),
          )
        ],
      )),
    );
  }
}
