import 'package:flutter/material.dart';
import 'package:hmtk_app/presentation/user/laboratory/menu_laboratory_detail.dart';
import 'package:hmtk_app/utils/dummy_data.dart';

import '../../../widget/template_page.dart';

class MenuLaboratory extends StatelessWidget {
  const MenuLaboratory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: MyPage(
        widget: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Laboratory',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'Computer Engineering',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 8,
                  child: Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        )),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                          child: Image.asset(
                            'assets/dec-laboratory.png',
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                        GridView.builder(
                          padding: EdgeInsets.all(25),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 30.0,
                            mainAxisSpacing: 20.0,
                          ),
                          itemCount: DummyData.laboratory.length,
                          itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MenuLaboratoryDetail(
                                              gambar: DummyData
                                                  .laboratory[index]['gambar'],
                                              title: DummyData.laboratory[index]
                                                  ['title'],
                                              deskripsi:
                                                  DummyData.laboratory[index]
                                                      ['deskripsi'])));
                            },
                            child: SizedBox(
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        DummyData.laboratory[index]['gambar'],
                                        height: 70,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        DummyData.laboratory[index]['title'],
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 17),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
