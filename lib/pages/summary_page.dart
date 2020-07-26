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
          CartItem(
            "https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/272/272782/oranges-in-a-box.jpg?w=1155&h=1444",
            "Orange",
            "100",
            "5",
          ),
          CartItem(
            "https://upload.wikimedia.org/wikipedia/commons/c/c4/Orange-Fruit-Pieces.jpg",
            "Orange",
            "80",
            "4",
          ),
        ],
      ),
    );
  }
}
