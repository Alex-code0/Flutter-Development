import 'package:flutter/material.dart';
import 'package:food_making/AboutInstructions.dart';
import 'package:food_making/AboutVideoList.dart';
import 'package:food_making/DetailPageIngredients.dart';
import "package:food_making/DetailPageTopBar.dart";

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(HeaderText: "Classic Beef Steak"),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(bottom: 16),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 16, bottom: 16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image(
                        image: AssetImage("assets/Steak.png"),
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 24, right: 24),
                    child: Text(
                      "Beef steak is a classic and beloved dish made from tender cuts of beef, typically seasoned and grilled to perfection. The result is a succulent and flavorful piece of meat that is often enjoyed with various accompaniments like vegetables, potatoes, or sauces.",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Color(0xFFF5F5EB),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(24, 24, 24, 12),
                        child: Text(
                          "Ingredients",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Ingredients(),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(24, 24, 24, 12),
                        child: Text(
                          "How to video",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      VideoList(),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(24, 24, 24, 12),
                        child: Text(
                          "Instructions",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Instructions(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
