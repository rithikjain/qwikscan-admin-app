class ItemList {
  List<Items> items;
  String message;
  int totalPrice;

  ItemList({this.items, this.message, this.totalPrice});

  ItemList.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
    message = json['message'];
    totalPrice = json['total_price'];
  }
}

class Items {
  int iD;
  String createdAt;
  String updatedAt;
  Null deletedAt;
  String id;
  String cartId;
  String itemName;
  int itemPrice;
  int itemQuantity;
  String itemImageUrl;

  Items(
      {this.iD,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.id,
      this.cartId,
      this.itemName,
      this.itemPrice,
      this.itemQuantity,
      this.itemImageUrl});

  Items.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    deletedAt = json['DeletedAt'];
    id = json['id'];
    cartId = json['cart_id'];
    itemName = json['item_name'];
    itemPrice = json['item_price'];
    itemQuantity = json['item_quantity'];
    itemImageUrl = json['item_image_url'];
  }
}
