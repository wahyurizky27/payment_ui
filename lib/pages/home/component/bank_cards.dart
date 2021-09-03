import 'package:flutter/material.dart';
import 'package:payment_ui/theme.dart';

class BankCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin),
            Container(
              width: 100,
              height: 210,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(26),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/icon_add.png',
                  width: 26,
                ),
              ),
            ),
            SizedBox(width: 20),
            Image.asset(
              "assets/images/image_card.png",
              height: 210,
            ),
            SizedBox(
              width: defaultMargin,
            ),
          ],
        ),
      ),
    );
  }
}
