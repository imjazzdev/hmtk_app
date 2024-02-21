import 'package:flutter/material.dart';
import 'package:hmtk_app/widget/button.dart';
import 'package:hmtk_app/widget/template_page.dart';

import '../../../utils/color_pallete.dart';

class MenuShopMycart extends StatefulWidget {
  const MenuShopMycart({super.key});

  @override
  State<MenuShopMycart> createState() => _MenuShopMycartState();
}

class _MenuShopMycartState extends State<MenuShopMycart> {
  int jumlah = 1;
  List<String> ukurans = ['S', 'M', 'L', 'XL', 'XXL', 'XXXL'];
  String valueUkuran = 'S';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPage(
          widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'My Cart',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          ListView.builder(
            itemCount: 1,
            shrinkWrap: true,
            padding: EdgeInsets.all(20),
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  Image.asset(
                    'assets/jersey pemain detail.png',
                    height: 70,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jersey Pemain',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Rp 150.000',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        jumlah--;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.remove,
                                      size: 20,
                                    )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  '$jumlah',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                ),
                              ),
                              CircleAvatar(
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        jumlah++;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.add,
                                      size: 20,
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          DropdownButton(
                            value: valueUkuran,
                            focusColor: Colors.blue,
                            style: TextStyle(color: Colors.blue, fontSize: 18),
                            iconEnabledColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                valueUkuran = value!;
                              });
                            },
                            items: ukurans
                                .map((e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(
                                        e,
                                      ),
                                    ))
                                .toList(),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      )),
      bottomNavigationBar: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Total Pembayaran',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 40,
              width: 120,
              alignment: Alignment.center,
              child: Text(
                'Rp 150.000',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorPallete.blue),
            )
          ],
        ),
      ),
    );
  }
}
