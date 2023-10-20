import 'package:flutter/material.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key, required this.ArticleHeaderText});
  final String ArticleHeaderText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFFEBEEF2), width: 1),
      ),
      margin: EdgeInsets.only(left: 16, right: 16),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            child: Image(
              image: AssetImage("assets/ArticleImage.png"),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
              child: Column(
                children: [
                  Text(
                    ArticleHeaderText,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2C3A4B),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage("assets/ChannelLogo.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text(
                              "BBC News",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2C3A4B),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                        padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: Color(0xFFFF6861),
                            width: 1,
                          ),
                        ),
                        child: Text(
                          "Health",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFF6861),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage("assets/like.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4),
                            child: Text(
                              "test",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2C3A4B),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage("assets/comments.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4),
                            child: Text(
                              "test",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2C3A4B),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage("assets/bookmark.png"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
