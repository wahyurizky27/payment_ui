import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_money_formatter/flutter_money_formatter.dart'
    show FlutterMoneyFormatter, MoneyFormatterSettings;
import 'package:payment_ui/theme.dart';

class LatestTransactions extends StatelessWidget {
  Widget transactionItem({
    required String iconUrl,
    required String title,
    required String time,
    required double price,
  }) {
    return Container(
      padding: EdgeInsets.all(13),
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Image.asset(
          iconUrl,
        ),
        title: Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        subtitle: Text(
          time,
          style: greyTextStyle.copyWith(
            fontSize: 12,
          ),
        ),
        trailing: Text(
          (price > 0 ? '+ ' : '- ') +
              FlutterMoneyFormatter(
                amount: price.abs(),
                settings: MoneyFormatterSettings(
                    thousandSeparator: ',',
                    decimalSeparator: ',',
                    fractionDigits: 2),
              ).output.symbolOnLeft.toString(),
          style: price > 0
              ? blackTextStyle.copyWith(
                  fontSize: 16,
                )
              : redTextStyle.copyWith(
                  fontSize: 16,
                ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Latest Transactions",
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          transactionItem(
            iconUrl: 'assets/images/icon_1.png',
            title: 'Cakwe Medan',
            time: 'Today, 10 AM',
            price: -920.00,
          ),
          transactionItem(
            iconUrl: 'assets/images/icon_2.png',
            title: 'Topup',
            time: 'Yesterday, 10 PM',
            price: 820.00,
          ),
          transactionItem(
            iconUrl: 'assets/images/icon_3.png',
            title: 'Pempek Kapal Selam',
            time: 'Today, 08 AM',
            price: -750.00,
          ),
          transactionItem(
            iconUrl: 'assets/images/icon_4.png',
            title: 'Tekwan',
            time: 'Today, 11 AM',
            price: -980.00,
          ),
        ],
      ),
    );
  }
}
