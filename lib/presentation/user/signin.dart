import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:hmtk_app/presentation/user/reset_password.dart';
import 'package:hmtk_app/utils/color_pallete.dart';
import 'package:hmtk_app/widget/button.dart';
import 'package:hmtk_app/widget/main_navigator.dart';
import 'package:hmtk_app/widget/template_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  var fullname = TextEditingController();
  var nim = TextEditingController();
  var notelp = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  bool isVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPage(
          widget: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            height: MediaQuery.of(context).size.height * 0.25,
            child: Image.asset('assets/LOGO TK.png'),
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: ColorPallete.greenprim),
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: ColorPallete.greenprim),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: ColorPallete.greenprim),
                      ),
                    )),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorPallete.greenprim.withOpacity(0.3),
                  ),
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: 'ivandaniar@gmail.com',
                      border: InputBorder.none,
                      prefixIcon: Container(
                          width: 100,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Email',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorPallete.greenprim.withOpacity(0.3),
                  ),
                  child: TextFormField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '*******',
                      border: InputBorder.none,
                      prefixIcon: Container(
                          width: 100,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Password',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResetPassword(),
                              ));
                        },
                        child: Text(
                          'Forgot password?',
                        ))
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      if (email.text == 'ivandaniar@gmail.com' &&
                          password.text == '123456') {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainNavigator(),
                            ),
                            (route) => false);
                      } else {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          animType: AnimType.rightSlide,
                          title: 'Email dan password yang anda masukkan salah!',
                          btnOkOnPress: () {},
                        ).show();
                      }
                    },
                    child: MyButton(
                      txt: 'Login',
                      height: 45,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
