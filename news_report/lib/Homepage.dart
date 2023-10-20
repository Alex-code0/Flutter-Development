import 'package:flutter/material.dart';
import 'package:news_report/ArticleWidget.dart';
import 'package:news_report/FeaturedWidget.dart';
import 'package:news_report/HeaderWidget.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(HeaderText: "Featured", MarginTop: 53),
            FeaturedWidget(),
            HeaderWidget(HeaderText: "News", MarginTop: 22),
            ArticleWidget(
                ArticleHeaderText:
                    "Wow! USA Develops New Way of Faster and More"),
          ],
        ),
      ),
    );
  }
}
