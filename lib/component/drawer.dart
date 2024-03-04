import 'package:flutter/material.dart';
import 'package:hmtk_app/admin/dashboard.dart';
import 'package:hmtk_app/component/activity.dart';

class DrawerScren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment(0.0, 0.1),
          colors: [Colors.white.withOpacity(0.8), Colors.white], //
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Image(
              image: AssetImage('assets/LogoTK3.png'),
            ),
          ),
          ListTile(
            title: const Text('Dashboard'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dashboard(); //
                },
              );
            },
          ),
          ListTile(
            title: const Text('Activity'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return ActivityDialog(); //
                },
              );
            },
          ),
          ListTile(
            title: const Text('Fun TK'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return FuntkDialog(); //
                },
              );
            },
          ),
          ListTile(
            title: const Text('Shop'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return ShopDialog(); //
                },
              );
            },
          ),
          ListTile(
            title: const Text('Laboratory'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return LabDialog(); //
                },
              );
            },
          ),
          ListTile(
            title: const Text('Aspiration'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AspirasiDialog(); //
                },
              );
            },
          ),
          ListTile(
            title: const Text('Material Bank'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return MaterialBankDialog(); //
                },
              );
            },
          ),
          ListTile(
            title: const Text('Timeline'),
            // onTap: () {
            //   showDialog(
            //     context: context,
            //     builder: (BuildContext context) {
            //       return ActivityDialog(); //
            //     },
            //   );
            // },
          ),
          ListTile(
            title: const Text('About Us'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AboutUsDialog(); //
                },
              );
            },
          ),
          ListTile(
            title: const Text('Vision & Mision'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return VisiMisiDialog(); //
                },
              );
            },
          ),
          ListTile(
            title: const Text('BPH HMTK'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return BphDialog(); //
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
