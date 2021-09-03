import 'package:flutter/material.dart';
import 'package:payment_ui/pages/home/component/header.dart';
import 'package:payment_ui/pages/home/component/latest_transaction.dart';
import 'package:payment_ui/theme.dart';

import 'component/bank_cards.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8FBFB),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 280,
            decoration: BoxDecoration(
              color: greenColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(50),
              ),
            ),
          ),
          ListView(
            children: [
              Header(),
              BankCards(),
              LatestTransactions(),
            ],
          ),
        ],
      ),
    );
  }
}
