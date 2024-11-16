// ignore_for_file: prefer_const_constructors

import 'package:benhvienbienhoa/define.dart';
import 'package:flutter/material.dart';

class seach_wget extends StatelessWidget {
  const seach_wget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        child: Stack(
          // child: TextFormField(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: input_search,
                fillColor: bgSearch,
                filled: true,
                border: InputBorder.none, // Tắt viền của TextFormField
              ),
            ),

            // button absolute
            Positioned(
              top: 0,
              right: 0,
              child: TextButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'Search',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
