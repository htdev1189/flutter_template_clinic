import 'package:flutter/material.dart';

class header_wget extends StatelessWidget {
  const header_wget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Colors.grey,
          width: 1,
        ),
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // menu icon
          const Icon(
            Icons.menu,
            size: 40,
            color: Color(0xFFcc192e),
          ),

          // logo
          Image.asset(
            'assets/images/logo.png',
            height: 60,
          ),

          // search icon
          const Icon(
            Icons.search,
            size: 40,
            color: Color(0xFFcc192e),
          ),
        ],
      ),
    );
  }
}
