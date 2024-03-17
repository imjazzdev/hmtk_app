import 'package:flutter/material.dart';
import 'package:hmtk_app/presentation/user/timeline_post.dart';
import 'package:hmtk_app/utils/color_pallete.dart';
import 'package:hmtk_app/widget/template_page.dart';

class Timeline extends StatefulWidget {
  const Timeline({super.key});

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  var hapusKomentar = '';
  bool isLike = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timeline'),
      ),
      body: MyPage(
          widget: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: 4,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/profile.png',
                          height: 50,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ivan Daniar',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              '8 jam yang lalu',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset('assets/button titik 3.png')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Info futsal slurrr kabeh..',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  color: Colors.grey.shade300,
                  height: 200,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border, color: Colors.blue)),
                    Text(
                      '12.036 suka',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.8,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isLike = !isLike;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          isLike
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : Icon(
                                  Icons.favorite_border,
                                ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Suka')
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(35))),
                          builder: (context) => Container(
                            height: MediaQuery.of(context).size.height * 0.6,
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          width: 40,
                                          child: Divider(
                                            thickness: 4,
                                          )),
                                      Text(
                                        'Komentar',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Divider(
                                        thickness: 0.8,
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 3,
                                    padding: EdgeInsets.only(top: 15),
                                    itemBuilder: (context, index) => InkWell(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 25),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/profile.png',
                                                  width: 40,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'Ivan Daniar',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                          '8j',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                    Text(
                                                      'Ayok yang bisa join',
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            PopupMenuButton(
                                              onSelected: (value) {
                                                setState(() {
                                                  hapusKomentar =
                                                      value.toString();
                                                });
                                              },
                                              itemBuilder:
                                                  (BuildContext context) {
                                                return const [
                                                  PopupMenuItem(
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "Hapus",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.red),
                                                        ),
                                                        Icon(Icons.delete,
                                                            color: Colors.red)
                                                      ],
                                                    ),
                                                    value: '1',
                                                  ),
                                                ];
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 5, right: 5),
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.grey.shade300),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 1,
                                            child:
                                                Image.asset('assets/girl.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          flex: 7,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintStyle:
                                                    TextStyle(fontSize: 12),
                                                hintText:
                                                    'Tambahkan komentar anda..'),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mode_comment_outlined,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Komentar',
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.share,
                          ),
                          Text('Bagi')
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TimelinePost(),
              ));
        },
        child: Container(
          padding: EdgeInsets.all(10),
          height: 50,
          width: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: ColorPallete.blue),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.add, color: Colors.blue)),
              SizedBox(
                width: 5,
              ),
              Text(
                'Post',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
