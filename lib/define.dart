// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const Color color1 = Color(0xFFcc192e);
const Color bgSearch = Color.fromARGB(127, 121, 173, 194);
const String input_search = "Nhập số điện thoại để được tư vấn";

const Color color2 = Color(0xFF0e3673);
const Color color3 = Color(0xFF07ccec);

List<Map<String, dynamic>> posts = [
  {
    "link": "pha-thai-an-toan/",
    "title": "Đầu dương vật nổi mụn là bệnh gì? Có nguy hiểm không?",
    "img": "assets/images/post1.jpg",
    "des":
        "Dương vật cong có nên chỉnh hình không? Bởi có không ít nam giới mắc phải tình trạng dương vật bị cong nhẹ hoặc cong lệch hẳn sang bên"
  },
  {
    "link": "pha-thai-an-toan/",
    "title": "Dương vật cong có nên chỉnh hình không?",
    "img": "assets/images/post2.jpg",
    "des":
        "Dương vật cong có nên chỉnh hình không? Bởi có không ít nam giới mắc phải tình trạng dương vật bị cong nhẹ hoặc cong lệch hẳn sang bên"
  },
  {
    "link": "pha-thai-an-toan/",
    "title": "Phòng khám giúp dương vật to và dài hơn tại Đồng Nai?",
    "img": "assets/images/post3.jpg",
    "des":
        "Dương vật cong có nên chỉnh hình không? Bởi có không ít nam giới mắc phải tình trạng dương vật bị cong nhẹ hoặc cong lệch hẳn sang bên"
  },
  {
    "link": "pha-thai-an-toan/",
    "title": "Chi phí gắn bi dương vật ở Đồng Nai có đắt không?",
    "img": "assets/images/post4.jpg",
    "des":
        "Dương vật cong có nên chỉnh hình không? Bởi có không ít nam giới mắc phải tình trạng dương vật bị cong nhẹ hoặc cong lệch hẳn sang bên"
  },
];

const String PhoneNumber = "0123456789";

// hinh anh phong kham

final List<String> images = [
  "assets/images/pk-large-1.jpg",
  "assets/images/pk-large-1.jpg",
  "assets/images/pk-large-1.jpg",
  "assets/images/pk-large-1.jpg",
  "assets/images/pk-large-1.jpg",
  "assets/images/pk-large-1.jpg",
];

// slider

final List<Map<String, dynamic>> feedbacks = [
  {
    "star": 4,
    "avatar": "assets/images/bn1.png",
    "content":
        "Cũng biết đến phòng khám có chữa xuất tinh sớm nhưng ban đầu còn e ngại lắm, khi đến rồi mới thấy sự chu đáo tận tâm của bác sĩ dành cho bệnh nhân, trang thiết bị bên trong phòng khám rất hiện đại. Nay tôi hết xuất tinh sớm rồi thật cảm ơn bác sĩ!",
    "name": "L.B",
    "address": "Bình Dương",
    "disease": "Xuất tinh sớm"
  },
  {
    "star": 5,
    "avatar": "assets/images/bn2.png",
    "content":
        "Khi thăm khám và điều trị kinh nguyệt không đều tại phòng khám Đa khoa Đồng Nai khiến mình cảm thấy vô cùng hài lòng, có thể nói là hài lòng nhất từ trước đến nay. Bệnh nhên luôn được tận tình đón tiếp, các thủ tục nhanh chóng vì đã đặt hẹn từ trước với bác sĩ.",
    "name": "L.B",
    "address": "Bình Dương",
    "disease": "Xuất tinh sớm"
  },
  {
    "star": 3,
    "avatar": "assets/images/bn3.png",
    "content":
        "Tôi rất hài lòng về chất lượng điều trị của phòng khám. Hồi tháng 5 vừa rồi tôi có đến cắt bao quy đầu chữa dài bao quy đầu, các bác sĩ ở đây làm việc rất chuyên nghiệp, dịch vụ chăm sóc hậu phẫu cũng rất tốt. Phòng khám rất chất lượng",
    "name": "L.B",
    "address": "Bình Dương",
    "disease": "Xuất tinh sớm"
  },
];

// chuyen khoa

final List<Map<String, dynamic>> categories = [
  {
    "title": "Nam khoa",
    "img": "assets/images/icon-namkhoa.png",
    "link": "nam-khoa/",
    "sub": [
      {
        "title": "Bệnh tiết niệu",
        "link": "khoa-nhi/",
      },
      {
        "title": "Chỉnh hình nam khoa",
        "link": "khoa-nhi/",
      },
      {
        "title": "Rối loạn xuat tinh",
        "link": "khoa-nhi/",
      },
      {
        "title": "Rối loạn xuat tinh",
        "link": "khoa-nhi/",
      },
      {
        "title": "Rối loạn xuat tinh",
        "link": "khoa-nhi/",
      },
    ]
  },
  {
    "title": "Phụ khoa",
    "img": "assets/images/icon-phukhoa.png",
    "link": "nam-khoa/",
    "sub": [
      {
        "title": "Bệnh tiết niệu",
        "link": "khoa-nhi/",
      },
      {
        "title": "Chỉnh hình nam khoa",
        "link": "khoa-nhi/",
      },
      {
        "title": "Chỉnh hình nam khoa",
        "link": "khoa-nhi/",
      },
      {
        "title": "Rối loạn xuat tinh",
        "link": "khoa-nhi/",
      }
    ]
  },
  {
    "title": "Nam khoa",
    "img": "assets/images/icon-namkhoa.png",
    "link": "nam-khoa/",
    "sub": [
      {
        "title": "Bệnh tiết niệu",
        "link": "khoa-nhi/",
      },
      {
        "title": "Chỉnh hình nam khoa",
        "link": "khoa-nhi/",
      },
      {
        "title": "Rối loạn xuat tinh",
        "link": "khoa-nhi/",
      },
      {
        "title": "Rối loạn xuat tinh",
        "link": "khoa-nhi/",
      }
    ]
  },
  {
    "title": "Nam khoa",
    "img": "assets/images/icon-namkhoa.png",
    "link": "nam-khoa/",
    "sub": [
      {
        "title": "Bệnh tiết niệu",
        "link": "khoa-nhi/",
      },
      {
        "title": "Chỉnh hình nam khoa",
        "link": "khoa-nhi/",
      },
      {
        "title": "Rối loạn xuat tinh",
        "link": "khoa-nhi/",
      }
    ]
  },
  {
    "title": "Nam khoa",
    "img": "assets/images/icon-namkhoa.png",
    "link": "nam-khoa/",
    "sub": [
      {
        "title": "Bệnh tiết niệu",
        "link": "khoa-nhi/",
      },
      {
        "title": "Chỉnh hình nam khoa",
        "link": "khoa-nhi/",
      },
      {
        "title": "Rối loạn xuat tinh",
        "link": "khoa-nhi/",
      }
    ]
  },
];
