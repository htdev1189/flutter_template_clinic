// ignore_for_file: prefer_const_constructors

import 'package:benhvienbienhoa/define.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CamnhanWidget extends StatefulWidget {
  const CamnhanWidget({super.key});

  @override
  _CamnhanWidgetState createState() => _CamnhanWidgetState();
}

class _CamnhanWidgetState extends State<CamnhanWidget> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 300.0,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          carouselController: _carouselController,
          items: feedbacks.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  padding: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 233, 229, 217),
                  ),
                  child: Column(
                    children: [
                      // star
                      Row(
                        children: [
                          for (int i = 0; i < item['star']; i++)
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        item['content'],
                        maxLines: 6,
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(item['avatar']),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                              color: Color(0xFF07ccec),
                              width: 3,
                            ))),
                            padding: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${item["name"]} - ${item["disease"]}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Asap',
                                  ),
                                ),
                                Text(
                                  item['address'],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),

        // dots
        const SizedBox(height: 15),
        AnimatedSmoothIndicator(
          activeIndex: _currentIndex,
          count: feedbacks.length,
          effect: SlideEffect(
            dotHeight: 12,
            dotWidth: 12,
          ),
          // effect: ExpandingDotsEffect(
          //   activeDotColor: Colors.blue,
          //   dotColor: Colors.red,
          //   dotHeight: 8,
          //   dotWidth: 8,
          // ),
          onDotClicked: (index) {
            _carouselController.animateToPage(index);
          },
        ),
      ]),
    );
  }
}
