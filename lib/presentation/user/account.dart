import 'package:flutter/material.dart';
import 'package:hmtk_app/presentation/user/signin.dart';
import 'package:hmtk_app/presentation/user/start.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/bg.png',
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Container(
            child: ListView(
              padding: EdgeInsets.all(25),
              children: [
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Account',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          'assets/profile.png',
                          height: 100,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            radius: 20,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                )),
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Ivan Daniar',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Full Name',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: 'Ivan Daniar',
                      fillColor: Colors.white,
                      border: InputBorder.none),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'NIM',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: '10070806',
                      fillColor: Colors.white,
                      border: InputBorder.none),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'No Telp',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: '0896756747',
                      fillColor: Colors.white,
                      border: InputBorder.none),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: 'lulustepat@gmail.com',
                      fillColor: Colors.white,
                      border: InputBorder.none),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: '*********',
                      fillColor: Colors.white,
                      border: InputBorder.none),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Start(),
                          ),
                          (route) => false);
                    },
                    child: Text('Logout'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        minimumSize: Size(100, 40)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
