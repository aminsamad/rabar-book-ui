import 'package:flutter/material.dart';
import 'package:rabar_book/model/constants.dart';
import 'package:rabar_book/model/list_card.dart';

class CategoryUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffeeeeee),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 210,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(blurRadius: 20, color: Color(0xffbdbdbd))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Design Sprints",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "DesignBetter.Co",
                              style: TextStyle(color: Color(0xfffeeeeee)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.orange,
                                  size: 20,
                                ),
                                SizedBox(width: 40),
                                Text(
                                  "1,263 reviews",
                                  style: TextStyle(
                                      color: Color(0xffe0e0e0), fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                                height: 25,
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Including Audiobook",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  color: Colors.orange[400],
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                )),
                          )
                        ],
                      ),
                      Container(
                        height: 130,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/images/sprints.png"),
                                fit: BoxFit.fill)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      for (var i = 0; i < 10; i++)
                        ListCard(
                          title: "Category $i",
                          description: "Nzanm ch bnusm $i",
                          image: "assets/images/sprints.png",
                        ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
