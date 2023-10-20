import 'package:flutter/material.dart';

class Ingredients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      padding: EdgeInsets.fromLTRB(16, 8, 0, 8),
      margin: EdgeInsets.only(left: 24, right: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image(image: AssetImage("assets/Eclipse.png")),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 10, bottom: 10),
                child: Text(
                  "4 beef steak cuts (e.g., sirloin, ribeye, or fillet",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image(image: AssetImage("assets/Eclipse.png")),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 10, bottom: 10),
                child: Text(
                  "Salt and black pepper to taste",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image(image: AssetImage("assets/Eclipse.png")),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 10, bottom: 10),
                child: Text(
                  "2 tablespoons olive oil",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image(image: AssetImage("assets/Eclipse.png")),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 10, bottom: 10),
                child: Text(
                  "2 cloves of garlic, minced",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image(image: AssetImage("assets/Eclipse.png")),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 10, bottom: 10),
                child: Text(
                  "Fresh herbs (rosemary or thyme), choppe",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image(image: AssetImage("assets/Eclipse.png")),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 10, bottom: 10),
                child: Text(
                  "Butter for basting (optional)",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
