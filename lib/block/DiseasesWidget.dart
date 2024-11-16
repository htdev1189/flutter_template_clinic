// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DiseasesWidget extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      "link": "pha-thai-an-toan/",
      "title": "phá thai an toàn",
      "color": "e4f2ee"
    },
    {"link": "vo-sinh-nam/", "title": "vô sinh nam", "color": "dddefa"},
    {
      "link": "ngua-rat-vung-kin/",
      "title": "Ngứa rát vùng kín",
      "color": "f1f3f5"
    },
    {
      "link": "pha-thai-an-toan/",
      "title": "bệnh kinh nguyệt",
      "color": "e4f2ee"
    },
    {"link": "vo-sinh-nam/", "title": "nổi mụn sinh dục", "color": "dddefa"},
    {"link": "ngua-rat-vung-kin/", "title": "xuất tinh sớm", "color": "f1f3f5"},
    {"link": "pha-thai-an-toan/", "title": "tiểu rát", "color": "e4f2ee"},
    {"link": "vo-sinh-nam/", "title": "dài bao quy đầu", "color": "d1ecf9"},
    {"link": "ngua-rat-vung-kin/", "title": "bệnh trĩ", "color": "e6f6f8"},
    {"link": "pha-thai-an-toan/", "title": "sùi mào gà", "color": "e4f2ee"},
    {"link": "vo-sinh-nam/", "title": "bệnh lậu", "color": "e4e4f9"},
    {
      "link": "ngua-rat-vung-kin/",
      "title": "dương vật nổi mụn",
      "color": "e4f2ee"
    },
  ];

  DiseasesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: GridView.builder(
        shrinkWrap: true, // Giúp GridView chỉ chiếm không gian cần thiết
        physics:
            NeverScrollableScrollPhysics(), // Tắt cuộn trong GridView (mac dinh Grid đã có cuộn nên phải tắt)
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Số cột
          crossAxisSpacing: 10, // Khoảng cách giữa các cột
          mainAxisSpacing: 10, // Khoảng cách giữa các hàng
        ),
        itemCount: categories.length, // Số lượng phần tử trong GridView
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
              color: Color(
                  int.parse("0xff${categories[index]['color']}")), // Màu nền
              borderRadius: BorderRadius.circular(8), // Bo góc
            ),
            child: Center(
              child: Text(
                categories[index]['title'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
