import 'package:flutter/material.dart';
import 'package:qwikscan_admin/utils/theme.dart';
import 'package:qwikscan_admin/widgets/cart_item.dart';

class SummaryPage extends StatefulWidget {
  final String cartID;

  SummaryPage(this.cartID);

  @override
  _SummaryPageState createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(),
        preferredSize: Size.fromHeight(40),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Items",
                  style: PurpleHeadingText,
                ),
                Text(
                  "Total: 5424 Rs",
                  style: MediumHeadingText,
                ),
              ],
            ),
          ),
          CartItem(),
          CartItem(),
        ],
      ),
    );
  }
}
