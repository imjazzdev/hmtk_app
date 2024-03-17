import 'package:flutter/material.dart';

import '../../../utils/color_pallete.dart';

class BankMateri extends StatelessWidget {
  const BankMateri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.only(bottom: 15),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade300),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      ItemBank(
                          txt: 'Bahasa Inggris',
                          color: const Color.fromARGB(255, 96, 221, 100)),
                      ItemBank(txt: 'Fisika 1', color: Colors.green),
                      ItemBank(
                          txt: 'Kalkulus 1',
                          color: const Color.fromARGB(255, 96, 221, 100)),
                      ItemBank(txt: 'Logika Matematika', color: Colors.green),
                      ItemBank(
                          txt: 'Pembetukan Karakter',
                          color: const Color.fromARGB(255, 96, 221, 100)),
                      ItemBank(
                          txt: 'Pendidikan Kewarganegaraan',
                          color: Colors.green),
                      ItemBank(
                          txt: 'Pengantar Rekayasa dan Desain',
                          color: const Color.fromARGB(255, 96, 221, 100)),
                      ItemBank(
                          txt: 'Pengenalan Teknik Komputer',
                          color: Colors.green),
                      ItemBank(
                          txt: 'Algoritma dan Pemrograman',
                          color: const Color.fromARGB(255, 96, 221, 100)),
                      ItemBank(txt: 'Biologi', color: Colors.green),
                      ItemBank(
                          txt: 'Fisika 2',
                          color: const Color.fromARGB(255, 96, 221, 100)),
                      ItemBank(txt: 'Kalkulus', color: Colors.green),
                      ItemBank(
                          txt: 'Interaksi Manusia dan Komputer',
                          color: const Color.fromARGB(255, 96, 221, 100)),
                      ItemBank(txt: 'Literasi Manusia', color: Colors.green),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 35,
              child: Container(
                height: 50,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green),
                child: Text(
                  'Tingkat 1',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemBank extends StatelessWidget {
  final String txt;
  final Color color;

  const ItemBank({super.key, required this.txt, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35,
        padding: EdgeInsets.only(top: 5, bottom: 5),
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
        alignment: Alignment.center,
        child: Text(
          txt,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        color: color);
  }
}
