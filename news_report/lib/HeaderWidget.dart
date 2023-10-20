import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget(
      {super.key, required this.HeaderText, required this.MarginTop});
  final String HeaderText;
  final double MarginTop;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: MarginTop),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            HeaderText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2C3A4B),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "See all",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFF6861),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
