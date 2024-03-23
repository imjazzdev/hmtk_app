import 'package:flutter/material.dart';

class MenuDetailActivity extends StatefulWidget {
  const MenuDetailActivity({super.key});

  @override
  State<MenuDetailActivity> createState() => _MenuDetailActivityState();
}

class _MenuDetailActivityState extends State<MenuDetailActivity> {
  bool tapFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // actions: [
          //   CircleAvatar(
          //     backgroundColor: Colors.grey.shade50.withOpacity(0.5),
          //     child: IconButton(
          //         onPressed: () {
          //           setState(() {
          //             tapFavorite = !tapFavorite;
          //           });
          //         },
          //         icon: tapFavorite
          //             ? Icon(
          //                 Icons.favorite,
          //                 color: Colors.red,
          //                 size: 25,
          //               )
          //             : Icon(
          //                 Icons.favorite,
          //                 color: Colors.white,
          //                 size: 25,
          //               )),
          //   ),
          //   SizedBox(
          //     width: 10,
          //   )
          // ],
          ),
      body: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/img-futsal.png',
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'FUN FUTSAL',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                                blurRadius: 20,
                                color: Colors.black.withOpacity(0.7))
                          ],
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Lapangan Rajawali',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Informasi',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Glotroopers menang dramatis lewat adu penalti!',
                        style: TextStyle(fontSize: 14, color: Colors.green),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Lokasi',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        'assets/maps.png',
                        height: 180,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                ),
              ),
            ],
          )),
    );
  }
}
