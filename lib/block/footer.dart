// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:benhvienbienhoa/define.dart';
import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "nhập số điện thoại".toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Asap',
            ),
          ),
          Text(
            "Bác sĩ tư vấn sẽ liên hệ với bạn ngay",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Asap',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: "Nhap so dien thoai",
                      // can chinh
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 40,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: color3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Gửi".toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 16,
                        )
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
