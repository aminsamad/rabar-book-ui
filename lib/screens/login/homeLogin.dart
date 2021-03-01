import 'package:flutter/material.dart';
import 'package:rabar_book/model/constants.dart';
import 'package:rabar_book/model/socialButton.dart';
import 'package:rabar_book/screens/login/loginScreen.dart';
import 'package:rabar_book/screens/login/signpScreen.dart';

class HomeLoginScreen extends StatefulWidget {
  @override
  _HomeLoginScreenState createState() => _HomeLoginScreenState();
}

class _HomeLoginScreenState extends State<HomeLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDFE0E4),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                color: primaryColor,
              ),
            ),
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "كتێبخانه‌ی ڕابه‌ر",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(height: 25),

                    Image.asset(
                      "assets/icons/app_icon.png",
                      height: 130,
                      width: 120,
                    ),
                    SizedBox(height: 30),

                    //GridView
                    Expanded(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 20, bottom: 20),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                          text: 'به‌خێربێیت بۆ   ',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: textColor,
                                              fontFamily: "kurdish"),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: 'كتێبخانه‌ی ڕابه‌ر',
                                                style: TextStyle(
                                                    color: primaryColor,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "kurdish",
                                                    fontSize: 20))
                                          ])),
                                  SizedBox(height: 6),
                                  Text(
                                      "باشترین كتێبه‌كان له‌ كتێبخانه‌ی ڕابه‌ر بدۆزه‌وه‌",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: textColor)),
                                  Padding(
                                      padding: EdgeInsets.only(top: 30),
                                      child: Column(children: <Widget>[
                                        Container(
                                            width: double.infinity,
                                            height: 50,
                                            padding: EdgeInsets.only(
                                                left: 10, right: 10),
                                            child: MaterialButton(
                                              color: primaryColor,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              onPressed: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(builder:
                                                        (BuildContext context) {
                                                  return LoginScreen();
                                                }));
                                              },
                                              elevation: 4,
                                              highlightElevation: 8,
                                              splashColor:
                                                  Colors.white.withOpacity(0.3),
                                              highlightColor:
                                                  Colors.white.withOpacity(0.3),
                                              child: Text("چوونه‌ژووره‌وه‌",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16)),
                                            )),
                                        SizedBox(height: 15),
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          width: double.infinity,
                                          height: 50,
                                          child: OutlineButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            color: Colors.white,
                                            onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(builder:
                                                      (BuildContext context) {
                                                return SignupScreen();
                                              }));
                                            },
                                            splashColor:
                                                primaryColor.withOpacity(0.3),
                                            highlightColor:
                                                primaryColor.withOpacity(0.3),
                                            child: Text("دروستكردنی ئه‌كاونت",
                                                style: TextStyle(
                                                    color: primaryColor,
                                                    fontSize: 16)),
                                            borderSide:
                                                BorderSide(color: primaryColor),
                                          ),
                                        ),
                                      ])),
                                  SizedBox(height: 40),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          height: 1,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Text(
                                          "Rabar Book",
                                          style: TextStyle(color: textColor),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 1,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 5, left: 20, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          SocialButton(
                                            image: "assets/icons/facebook.png",
                                            press: () {},
                                          ),
                                          SocialButton(
                                            image: "assets/icons/instagram.png",
                                            press: () {},
                                          ),
                                          SocialButton(
                                            image:
                                                "assets/icons/phone-call.png",
                                            press: () {},
                                          )
                                        ]),
                                  ),
                                ],
                              ),
                            ),
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
      ),
    );
  }
}
