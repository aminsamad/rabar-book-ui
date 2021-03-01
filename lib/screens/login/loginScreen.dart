import 'package:flutter/material.dart';
import 'package:rabar_book/home.dart';
import 'package:rabar_book/model/constants.dart';
import 'package:rabar_book/model/socialButton.dart';
import 'package:rabar_book/screens/login/signpScreen.dart';
import 'package:rabar_book/screens/login/fogetPass.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.keyboard_backspace_rounded),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          color: Colors.white,
                          iconSize: 40,
                        ),
                        Image.asset(
                          "assets/icons/app_icon.png",
                          height: 40,
                          width: 40,
                        ),
                      ],
                    ),
                    SizedBox(height: 25),

                    Container(
                        alignment: Alignment.centerRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "چوونه‌ژووره‌وه‌",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "kurdish",
                                  fontSize: 25),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "لێره‌دا ئه‌كاونته‌كه‌ت بكه‌وه‌ پاشان دوگمه‌ی كردنه‌وه‌ لێبده‌",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "kurdish",
                                  fontSize: 16),
                            ),
                          ],
                        )),
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
                                  //email
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 5),
                                      alignment: Alignment.center,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xffEFEFEF),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.email,
                                              color: Colors.grey[500],
                                            ),
                                            border: InputBorder.none,
                                            hintText: "Email",
                                            hintStyle: TextStyle(
                                                fontFamily: "english",
                                                color: Colors.grey[600])),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),

                                  //password
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 5),
                                      alignment: Alignment.center,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xffEFEFEF),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.lock_outline,
                                              color: Colors.grey[600],
                                            ),
                                            border: InputBorder.none,
                                            hintText: "Password",
                                            hintStyle: TextStyle(
                                                fontFamily: "english",
                                                color: Colors.grey[600])),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),

                                  //login button
                                  Container(
                                      width: double.infinity,
                                      height: 45,
                                      padding:
                                          EdgeInsets.only(left: 20, right: 20),
                                      child: MaterialButton(
                                        color: primaryColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder:
                                                  (BuildContext context) {
                                            return HomePage();
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
                                  SizedBox(height: 20),
                                  FlatButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      splashColor:
                                          primaryColor.withOpacity(0.3),
                                      highlightColor:
                                          primaryColor.withOpacity(0.3),
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(builder:
                                                (BuildContext context) {
                                          return ForgetPass();
                                        }));
                                      },
                                      child: Text(
                                        "وشه‌ی نهێنیت بیرچووه‌ ؟",
                                        style: TextStyle(
                                          color: primaryColor,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    height: 1,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, bottom: 10),
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
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 20),
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
