import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:rabar_book/model/constants.dart';
import 'package:rabar_book/model/settingList.dart';
import 'package:rabar_book/screens/category_ui.dart';
import 'package:rabar_book/screens/login/homeLogin.dart';
import 'package:rabar_book/screens/viewBook.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  MotionTabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = MotionTabController(initialIndex: 0, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: primaryColor));
    List<String> _locations = ['A', 'B', 'C', 'D'];
    String _selectedLanguage;
    return Scaffold(
        bottomNavigationBar: MotionTabBar(
            labels: ["سه‌ره‌كی", "جۆره‌كان", "ڕێكخستن"],
            initialSelectedTab: "سه‌ره‌كی",
            tabIconColor: bottomNavIconColor,
            tabSelectedColor: primaryColor,
            onTabItemSelected: (int value) {
              setState(() {
                _tabController.index = value;
              });
            },
            icons: [Icons.home, Icons.category, Icons.settings],
            textStyle: TextStyle(color: textColor, fontFamily: "kurdish")),
        body: SafeArea(
          child: MotionTabBarView(
            controller: _tabController,
            children: <Widget>[
              //Home layout

              SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(8),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          color: primaryColor,
                        ),
                        child: Column(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 20, right: 20, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  width: 40,
                                  height: 40,
                                  margin: EdgeInsets.only(left: 5, right: 10),
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffF4F5F9)),
                                  child: Image.asset(
                                    "assets/icons/user.png",
                                    height: 35,
                                    width: 35,
                                    color: primaryColor,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text("زمانێك هه‌ڵبژێره‌",
                                        style: TextStyle(color: Colors.white)),

                                    //drop down
                                    DropdownButton(
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.white,
                                      ),
                                      dropdownColor: Colors.white,
                                      underline: DropdownButtonHideUnderline(
                                        child: Text(""),
                                      ),
                                      hint: Text('كوردی',
                                          style: TextStyle(
                                              color: Colors
                                                  .white)), // Not necessary for Option 1
                                      value: _selectedLanguage,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _selectedLanguage = newValue;
                                        });
                                      },
                                      items: _locations.map((location) {
                                        return DropdownMenuItem(
                                          child: new Text(location),
                                          value: location,
                                        );
                                      }).toList(),
                                    ),
                                  ],
                                ),

                                //notification
                                Badge(
                                  badgeColor: lineColor,
                                  badgeContent: Text(
                                    '5',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  child: IconButton(
                                    splashRadius: 1,
                                    iconSize: 30,
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (BuildContext context) {
                                        return HomeLoginScreen();
                                      }));
                                    },
                                    icon: Icon(
                                      Icons.notifications,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, right: 20, left: 20, bottom: 10),
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'Hello ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: "english"),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Rekan Waysh',
                                          style: TextStyle(
                                              fontFamily: "english",
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 20, right: 20, bottom: 10),
                            child: Container(
                              margin: EdgeInsets.only(bottom: 30),
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(left: 20, right: 8),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Color(0xfffafafa),
                                  borderRadius: BorderRadius.circular(15)),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "گه‌ڕان له‌ كتێبه‌كان",
                                    hintStyle: TextStyle(
                                        color: Color(0xff757575),
                                        fontFamily: "kurdish"),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ])),
                    Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 25,
                          right: 25,
                          top: 30,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Popular",
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "english"),
                              ),
                              Container(
                                  padding: EdgeInsets.only(
                                      top: 4, bottom: 4, left: 10, right: 10),
                                  decoration: BoxDecoration(
                                      color: lineColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    "See more",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "english"),
                                  ))
                            ]),
                      ),
                      SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            for (var i = 0; i < 8; i++)
                              Column(
                                children: <Widget>[
                                  Row(children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(15),
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder:
                                                  (BuildContext context) {
                                            return ViewBook();
                                          }));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(left: 20),
                                          height: 160,
                                          width: 120,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    "assets/images/sprints.png"),
                                              )),
                                        ),
                                      ),
                                    )
                                  ]),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 5),
                                    child: Text("Design Sprints",
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontFamily: "english",
                                            fontSize: 16)),
                                  ),
                                  Text("DesignBetter.Co",
                                      style: TextStyle(
                                          color: textColor,
                                          fontFamily: "english",
                                          fontSize: 12)),
                                ],
                              ),
                          ],
                        ),
                      )
                    ]),
                  ])),

              //Category Layout

              CategoryUi(),

              //Settings Layout
              Stack(
                children: <Widget>[
                  Container(
                    height: 260,
                    decoration: BoxDecoration(
                      color: primaryColor,
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "ڕێكخستن",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "دیناره‌كانت",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "0",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "خاڵه‌كانت",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "0",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),

                          //GridView
                          Expanded(
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Column(
                                children: <Widget>[
                                  //widgets
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: 30,
                                          left: 20,
                                          right: 20,
                                          bottom: 30),
                                      margin: EdgeInsets.only(top: 10),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: SingleChildScrollView(
                                        physics: BouncingScrollPhysics(),
                                        child: Column(
                                          children: [
                                            //1
                                            SettingList(
                                              title: "كؤكردنه‌وه‌ی  دینار",
                                              icon:
                                                  "assets/icons/get_money.png",
                                              onPressed: () {},
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5, bottom: 15),
                                              child: Container(
                                                  width: double.infinity,
                                                  height: 1,
                                                  color: shadowColor),
                                            ),

                                            //2
                                            SettingList(
                                              title: "كڕینی  خاڵ",
                                              icon:
                                                  "assets/icons/insert-coin.png",
                                              onPressed: () {},
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5, bottom: 15),
                                              child: Container(
                                                  width: double.infinity,
                                                  height: 1,
                                                  color: shadowColor),
                                            ),

                                            //4
                                            SettingList(
                                              title: "ڕێكلام",
                                              icon:
                                                  "assets/icons/smartphone.png",
                                              onPressed: () {},
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5, bottom: 15),
                                              child: Container(
                                                  width: double.infinity,
                                                  height: 1,
                                                  color: shadowColor),
                                            ),

                                            //5
                                            SettingList(
                                              title: "زمان",
                                              icon: "assets/icons/language.png",
                                              onPressed: () {},
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5, bottom: 15),
                                              child: Container(
                                                  width: double.infinity,
                                                  height: 1,
                                                  color: shadowColor),
                                            ),

                                            //6
                                            SettingList(
                                              title: "ده‌رباره‌",
                                              icon: "assets/icons/info.png",
                                              onPressed: () {},
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5, bottom: 15),
                                              child: Container(
                                                  width: double.infinity,
                                                  height: 1,
                                                  color: shadowColor),
                                            ),

                                            //6
                                            SettingList(
                                              title: "چوونه‌ده‌ره‌وه‌",
                                              icon: "assets/icons/exit.png",
                                              onPressed: () {},
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5, bottom: 15),
                                              child: Container(
                                                  width: double.infinity,
                                                  height: 1,
                                                  color: shadowColor),
                                            ),
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
