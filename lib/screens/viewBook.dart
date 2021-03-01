import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rabar_book/model/constants.dart';

class ViewBook extends StatefulWidget {
  @override
  _ViewBookState createState() => _ViewBookState();
}

class _ViewBookState extends State<ViewBook> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Color(0xfff5f5f5)),
    );

    String description =
        "ئەم کتێبە هیچ کورتەیەکی لەسەر نەنوسراوە، هەوڵ دەدەین کورتەیەک دەربارەی کتێب زیاد بکەین لە داهاتوویەکی نزیک. ئەگەر دەتوانی کورتەیەک لەسەر ئەم کتێبە بنووسیت تکایە پەیوەندیمان پێوە بکە یان لە بەشی بۆچوونەکان لە خوارەوە زیادی بکە ";

    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.grey[700],
                          size: 35,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Colors.grey[200], blurRadius: 10)
                            ]),
                        child: PopupMenuButton(
                            itemBuilder: (BuildContext context) {}))
                  ]),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 25,
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/sprints.png",
                            fit: BoxFit.fill, width: 140, height: 180),
                      ),
                      SizedBox(width: 20),
                      Column(children: <Widget>[
                        SizedBox(height: 5),
                        Text("The Word \n of Abstract Art",
                            style:
                                TextStyle(fontSize: 18, fontFamily: "kurdish")),
                        SizedBox(height: 8),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Row(children: [
                                  Icon(Icons.star,
                                      color: primaryColor, size: 18),
                                  SizedBox(width: 5),
                                  Text(
                                    "4,5",
                                    style: TextStyle(color: primaryColor),
                                  )
                                ]),
                                SizedBox(width: 30),
                                Chip(
                                  backgroundColor: Color(0xFFC6C5EE),
                                  label: Text(
                                    "1.1k",
                                    style: TextStyle(color: primaryColor),
                                  ),
                                )
                              ],
                            )),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45)),
                          color: primaryColor,
                          child: Text("نرخی كتێب 6000دینار",
                              style: TextStyle(
                                  color: Colors.white, fontFamily: "kurdish")),
                          onPressed: () {},
                        ),
                      ])
                    ]),
              ),
              //description
              Padding(
                padding: const EdgeInsets.only(right: 8, left: 8),
                child: Text(description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: textColor, fontFamily: "kurdish", fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, right: 20, left: 20),
                child: Container(
                    width: double.infinity, height: 1, color: shadowColor),
              ),

              //account view
              Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("كتێبخانه‌ی ڕابه‌ر",
                              style: TextStyle(color: textColor, fontSize: 18)),
                          Chip(
                            label: Text("به‌ڕێوبه‌ر",
                                style: TextStyle(color: primaryColor)),
                            padding: EdgeInsets.only(left: 10, right: 10),
                            backgroundColor: Color(0xFFD8D6FF),
                          )
                        ],
                      ),
                      SizedBox(width: 15),
                      Container(
                          height: 80,
                          width: 80,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/sprints.png"),
                          )),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 15, right: 20, left: 20),
                child: Container(
                    width: double.infinity, height: 1, color: shadowColor),
              ),
              Container(
                width: double.infinity,
                height: 60,
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: MaterialButton(
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  onPressed: () {},
                  elevation: 4,
                  highlightElevation: 8,
                  splashColor: Colors.white.withOpacity(0.3),
                  highlightColor: Colors.white.withOpacity(0.3),
                  child: Text("كڕین",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
