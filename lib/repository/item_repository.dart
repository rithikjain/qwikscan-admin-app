import 'dart:convert';

import 'package:qwikscan_admin/model/item_list.dart';
import 'package:http/http.dart' as http;

class ItemRepository {
  static Future<ItemList> getCartItems(String cartID) async {
    final response = await http.get(
      "https://qwikscan-api.herokuapp.com/api/cart/showitems?cart_id=$cartID",
    );

    if (response.statusCode == 200) {
      return ItemList.fromJson(json.decode(response.body));
    } else {
      throw Exception("Oof something went wrong!");
    }
  }
}
