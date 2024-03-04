import 'package:flutter/material.dart';
import 'package:hmtk_app/admin/daftar_aspirasi.dart';
import 'package:hmtk_app/utils/color_pallete.dart';

class InputAspirasi extends StatelessWidget {
  const InputAspirasi({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: ColorPallete.greenprim,
        ),
        child: Stack(
          children: [
            IconButton(
              padding: EdgeInsets.fromLTRB(20, 130, 0, 0),
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DaftarAspirasi(),
                  ),
                );
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 200, 30, 0),
              height: double.infinity,
              width: double.infinity,
              child: Table(
                columnWidths: {
                  0: FixedColumnWidth(140.0),
                  1: FlexColumnWidth(),
                },
                children: [
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Nama',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        height: 30,
                      ),
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'NIM',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        height: 30,
                      ),
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Judul',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        height: 100,
                      ),
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Isi Tanggapan',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        height: 100,
                      ),
                    )
                  ])
                ],
              ),
            )
            // Other widgets in your container...
          ],
        ),
      ),
    );
  }
}
