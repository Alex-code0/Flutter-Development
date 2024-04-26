import 'package:flutter/material.dart';
import 'package:news_report/ArticleHeader.dart';

class ArticlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 55),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Image(
                  image: AssetImage("assets/ArrowLeft.png"),
                ),
              ),
            ),
            ArticleHeader(
              HeaderText:
                  "Joe Biden in Press Conference USA Announces New Political Policy",
            ),
          ],
        ),
      ),
    );
  }
}
