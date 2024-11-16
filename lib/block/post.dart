// ignore_for_file: prefer_const_constructors

import 'package:benhvienbienhoa/define.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          // img
          Image.asset("assets/images/post.jpg"),
          SizedBox(
            height: 10,
          ),

          // title
          Text(
            'Sưng đỏ bao quy đầu nguy hiểm như thế nào?',
            style: TextStyle(
              color: color2,
              fontSize: 18,
            ),
          ),

          // description
          SizedBox(
            height: 10,
          ),
          Text(
            "Sưng đỏ bao quy đầu nguy hiểm như thế nào? Hiện nay, khi nhắc đến tình trạng này không khỏi khiến cánh mày râu cảm thấy hoang mang và lo lắng bởi những ảnh hưởng của chúng đặc biệt là đối với chuyện chăn gối. Chính vì thế, để đi sâu hơn vào chi tiết mời bạn đọc hãy cùng tham khảo nội dung sau đây.",
            textAlign: TextAlign.justify,
            maxLines: 4,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),

          // list post

          // su dung ListView builder
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            // so luong
            itemCount: posts.length,
            // thuc hien
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Colors.grey,
                  ),
                )),
                margin: EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // image
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Image.asset(
                        posts[index]["img"],
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            Image.asset("assets/images/post.jpg"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            posts[index]["title"]!,
                            style: TextStyle(
                              fontSize: 15,
                              color: color2,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 3),
                          Text(
                            posts[index]["des"]!,
                            maxLines:
                                2, // Giới hạn tối đa 3 dòng cho phần mô tả
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
