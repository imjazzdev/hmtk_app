import 'package:flutter/material.dart';
import 'package:hmtk_app/utils/color_pallete.dart';
import 'package:hmtk_app/widget/button.dart';
import 'package:hmtk_app/widget/template_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with SingleTickerProviderStateMixin {
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: ColorPallete.greenprim),
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: ColorPallete.greenprim),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 18,
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
                    controller: fullname,
                    decoration: InputDecoration(
                      hintText: 'Ivan Daniar',
                      border: InputBorder.none,
                      prefixIcon: Container(
                          width: 100,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Full Name',
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
                    controller: nim,
                    decoration: InputDecoration(
                      hintText: '1002804802',
                      border: InputBorder.none,
                      prefixIcon: Container(
                          width: 100,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'NIM',
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
                    controller: notelp,
                    decoration: InputDecoration(
                      hintText: '1002804802',
                      border: InputBorder.none,
                      prefixIcon: Container(
                          width: 100,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'No Telp',
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
                    obscureText: isVisible,
                    decoration: InputDecoration(
                      hintText: '*****',
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          icon: Icon(isVisible
                              ? Icons.visibility_off
                              : Icons.visibility)),
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
                    Text(
                      'Already a member?',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Login'))
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: MyButton(
                    txt: 'Register',
                    height: 45,
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
