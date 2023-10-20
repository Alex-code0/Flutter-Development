import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, bottom: 65),
      width: MediaQuery.of(context).size.width,
      height: 182,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width / 2,
            margin: EdgeInsets.only(left: 4, right: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Prepare the Steaks: ",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 4),
                  child: Text(
                    "• Take the beef steaks out of the refrigerator and let them come to room temperature for about 30 minutes.",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Text(
                  "• Season both sides of the steaks generously with salt and black pepper. Optionally, sprinkle chopped fresh herbs over the steaks.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
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
