import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({super.key, required this.Name});

  final String Name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      color: Color(0xFFF5F5EB),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        padding: EdgeInsets.only(left: 12, right: 24),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            margin: EdgeInsets.only(left: 12),
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage("assets/Woman.png")),
                Padding(
                  padding: EdgeInsets.only(top: 12, right: 12),
                  child: Text(
                    Name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24, bottom: 8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(image: AssetImage("assets/book.png")),
                        Text(
                          "124",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF666666),
                          ),
                        )
                      ]),
                ),
                Row(children: [
                  Image(image: AssetImage("assets/heart.png")),
                  Text(
                    "41391",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF666666),
                    ),
                  )
                ]),
              ],
            ),
          );
        },
      ),
    );
  }
}
