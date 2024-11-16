// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:benhvienbienhoa/block/DiseasesWidget.dart';
import 'package:benhvienbienhoa/block/about.dart';
import 'package:benhvienbienhoa/block/banner.dart';
import 'package:benhvienbienhoa/block/camnhan.dart';
import 'package:benhvienbienhoa/block/chuyenkhoa.dart';
import 'package:benhvienbienhoa/block/header.dart';
import 'package:benhvienbienhoa/block/post.dart';
import 'package:benhvienbienhoa/block/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // header
              header_wget(),

              // search
              seach_wget(),

              // Banner
              BannerWidget(),

              // Container(
              //   height: 600,
              //   color: Colors.green,
              // ),

              // Container(
              //   height: 600,
              //   color: Colors.blue,
              // ),

              // List of diseases
              DiseasesWidget(),

              PostWidget(),

              AboutWidget(),

              CamnhanWidget(),

              ChuyenKhoaWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
