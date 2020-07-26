import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:qwikscan_admin/model/item_list.dart';
import 'package:qwikscan_admin/repository/item_repository.dart';
import 'package:qwikscan_admin/utils/theme.dart';
import 'package:qwikscan_admin/widgets/cart_item.dart';
import 'package:qwikscan_admin/widgets/show_up.dart';

class SummaryPage extends StatefulWidget {
  final String cartID;

  SummaryPage(this.cartID);

  @override
  _SummaryPageState createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  Future<ItemList> futureItemsList;

  @override
  void initState() {
    super.initState();
    futureItemsList = ItemRepository.getCartItems(widget.cartID);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(),
        preferredSize: Size.fromHeight(40),
      ),
      body: FutureBuilder<ItemList>(
        future: futureItemsList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            String total = snapshot.data.totalPrice.toString();
            return Column(
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
                        "Total: $total",
                        style: MediumHeadingText,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: snapshot.data.items.length,
                    itemBuilder: (context, index) {
                      return CartItem(
                        snapshot.data.items[index].itemImageUrl,
                        snapshot.data.items[index].itemName,
                        snapshot.data.items[index].itemPrice.toString(),
                        snapshot.data.items[index].itemQuantity.toString(),
                      );
                    },
                  ),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                "Oof, Something went wrong!",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                ),
              ),
            );
          }

          return Center(
            child: ShowUp(
              delay: Duration(milliseconds: 200),
              child: Lottie.asset(
                'assets/animations/loading.json',
                height: 100,
                repeat: true,
              ),
            ),
          );
        },
      ),
    );
  }
}
