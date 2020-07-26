import 'package:flutter/material.dart';
import 'package:qwikscan_admin/utils/theme.dart';

class CartItem extends StatelessWidget {
  CartItem(this.itemImageUrl, this.itemName, this.itemPrice, this.itemQuantity);

  final String itemName;
  final String itemPrice;
  final String itemQuantity;
  final String itemImageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Material(
        color: Grey,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius12,
        ),
        child: InkWell(
          borderRadius: borderRadius12,
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Purple,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(itemImageUrl),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Name: $itemName",
                        style: NormalText,
                      ),
                      Text(
                        "Price: $itemPrice",
                        style: NormalText,
                      ),
                      Text(
                        "Quantity: $itemQuantity",
                        style: NormalText,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
