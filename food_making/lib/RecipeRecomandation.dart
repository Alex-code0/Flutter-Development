import 'package:flutter/material.dart';

class RecipeRecomandation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(left: 24, right: 24),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xFFEBEBEB)),
          borderRadius: BorderRadius.circular(16),
          color: Colors.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recipes recomendation",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Text(
                      "Get your personalized recipes recommendation in a 4 steps",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF828686)),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              Image(image: AssetImage("assets/Pot.png"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    side: BorderSide(
                      width: 1,
                      color: Color(0xFFF9E2BE),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    backgroundColor: Color(0xFFFDF6EB),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  style: TextButton.styleFrom(
                      side: BorderSide(
                        width: 1,
                        color: Color(0xFFEBEBEB),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      backgroundColor: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
