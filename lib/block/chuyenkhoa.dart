// ignore_for_file: prefer_const_constructors

import 'package:benhvienbienhoa/define.dart';
import 'package:flutter/material.dart';

class ChuyenKhoaWidget extends StatelessWidget {
  const ChuyenKhoaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: GridView.builder(
        // shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: color2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // image
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                    color: color2,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: Image.asset(categories[index]['img']!).image,
                    ),
                  ),
                ),
                Text(
                  categories[index]['title'].toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: color3,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Asap',
                  ),
                ),

                // danh mục con
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: categories[index]['sub'].length,
                    itemBuilder: (context, indexSub) {
                      return Row(
                        children: [
                          // chấm tròn
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),

                          // text
                          Text(
                            categories[index]['sub'][indexSub]['title'],
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
