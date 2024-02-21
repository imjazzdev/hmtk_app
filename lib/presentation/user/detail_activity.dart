import 'package:flutter/material.dart';

class DetailActivity extends StatefulWidget {
  const DetailActivity({super.key});

  @override
  State<DetailActivity> createState() => _DetailActivityState();
}

class _DetailActivityState extends State<DetailActivity> {
  bool tapFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade50.withOpacity(0.5),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    tapFavorite = !tapFavorite;
                  });
                },
                icon: tapFavorite
                    ? Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 25,
                      )
                    : Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 25,
                      )),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Image.asset(
                'assets/img-futsal.png',
                height: MediaQuery.of(context).size.height * 0.6,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 300,
                left: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Watch a match!',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Tekkom VS Elektro',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'KBAA Champion',
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
