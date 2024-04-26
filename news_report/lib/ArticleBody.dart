import 'package:flutter/material.dart';

class ArticleBodyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Text("Politics"),
              ),
              Row(
                children: [Image(image: AssetImage("assets/"))],
              ),
              Row(
                children: [],
              ),
              Row(
                children: [],
              ),
            ],
          ),
          Row(),
        ],
      ),
    );
  }
}
