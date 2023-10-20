import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F5EB),
      padding: EdgeInsets.fromLTRB(24, 14, 24, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "See all",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFFC77D0A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
