import 'package:flutter/material.dart';
import 'package:hmtk_app/presentation/user/shop/menu_shop_data_pemesanan.dart';
import 'package:hmtk_app/widget/template_page.dart';

class MenuShopHistory extends StatelessWidget {
  const MenuShopHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
      ),
      body: MyPage(
        widget: ListView.builder(
          itemCount: 7,
          shrinkWrap: true,
          padding: EdgeInsets.all(20),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MenuShopDataPemesanan(
                        title: 'Jersey Pemain',
                        harga: 'Rp 150.000',
                        gambar: 'assets/jersey pemain detail.png'),
                  ));
            },
            child: Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(bottom: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  Image.asset(
                    'assets/jersey pemain detail.png',
                    height: 80,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Jersey Pemain',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            'M',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              '-',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'Rp 150.000',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
