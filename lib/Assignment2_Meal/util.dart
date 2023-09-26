class ItemCategory{
  late String name;
  late String price;

  ItemCategory(this.name, this.price);

  ItemCategory.fromMap(Map map){
    name = map['name'];
    price=map['price'];
  }
}