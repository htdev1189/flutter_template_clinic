// ignore_for_file: prefer_const_constructors

import 'package:benhvienbienhoa/define.dart';
import 'package:benhvienbienhoa/util/hkt_title1.dart';
import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        // can trai cho text
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          HktTitle1(title: 'tổng quan phòng khám', color: color2),
          Text(
            "phòng khám đa khoa đồng nai".toUpperCase(),
            textAlign: TextAlign.start,
            style: TextStyle(
              color: color3,
              fontFamily: 'Asap',
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          // description
          Text(
            "Phòng khám chuyên điều trị các bệnh nam khoa, phụ khoa, bệnh trĩ và các bệnh xã hội...Là một trong những phòng khám uy tín và danh tiếng nhất tại Tp. Biên Hòa- Đồng Nai. Chúng tôi chú trọng vào đầu tư cơ sở vật chất, trang thiết bị y tế hiện đại đạt tiêu chuẩn quốc tế, cộng với đội ngũ các bác sỹ giỏi, giàu kinh nghiệm trong và ngoài nước.",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // button style
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: color2,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color3,
                      ),
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(14, 54, 115, 0.96),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hotline tư vấn miễn phí".toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Asap',
                          ),
                        ),
                        Text(
                          PhoneNumber,
                          style: TextStyle(
                            color: Color(0xFFfee500),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Asap',
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),

          // hinh anh phong kham
          Image.asset(
            "assets/images/pk-large-1.jpg",
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
                Image.asset("assets/images/post.jpg"),
          ),
          SizedBox(
            height: 5,
          ),

          // grid view img
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    Image.asset("assets/images/post.jpg"),
              );
            },
          ),
        ],
      ),
    );
  }
}
