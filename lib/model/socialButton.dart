import 'package:flutter/material.dart';
import 'package:rabar_book/model/constants.dart';

class SocialButton extends StatelessWidget {
  final String image;
  final Function press;

  const SocialButton({Key key, this.image, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(1000),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFFeeeeee),
          shape: BoxShape.circle,
        ),
        height: 52,
        width: 52,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            splashColor: primaryColor.withOpacity(0.3),
            highlightColor: primaryColor.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFFeeeeee),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  image,
                  height: 35,
                  width: 35,
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
