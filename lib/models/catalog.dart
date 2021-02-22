class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iphone 12 pro",
      desc: "Apple iphone 12 generation",
      price: 999,
      color: "33505a",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_ZeGeXjyFDs99vbzIdywMaViT_XiL3o517qATCxan2UzlMJv47SxaUHY4a14iTBAOXj65iyo&usqp=CAc",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
