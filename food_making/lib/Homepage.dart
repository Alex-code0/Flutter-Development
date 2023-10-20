import 'package:flutter/material.dart';
import 'package:food_making/RecipeList.dart';
import 'package:food_making/RecipeRecomandation.dart';
import 'package:food_making/SectionWidget.dart';
import 'package:food_making/TopBar.dart';
import 'package:food_making/headerwidget.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  String AccountName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(12),
                    ),
                    Container(
                      color: Color(0xFFF5F5EB),
                      padding: EdgeInsets.all(12),
                    ),
                    RecipeRecomandation(),
                  ],
                ),
              ],
            ),
            HeaderWidget(text: "Popular recipes"),
            RecipeList(),
            HeaderWidget(text: "Popular creator"),
            SectionWidget(Name: "James Nikidaw"),
            HeaderWidget(text: "Featured"),
            SectionWidget(Name: "James Nikidaw"),
            Container(
              height: 24,
              color: Color(0xFFF5F5EB),
            )
          ],
        ),
      ),
    );
  }
}
