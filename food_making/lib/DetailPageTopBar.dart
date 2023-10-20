import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key, required this.HeaderText});
  final String HeaderText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 64),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Image(image: AssetImage("assets/BackButton.png")),
                ),
                Text(
                  HeaderText,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Image(image: AssetImage("assets/Vector.png")),
          ),
        ],
      ),
    );
  }
}
