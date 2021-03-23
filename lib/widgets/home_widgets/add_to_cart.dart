import 'package:awesom/models/cart.dart';
import 'package:awesom/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

///This is own maked Widget self Made
class AddToCart extends StatelessWidget {
  final Item catalog;

  AddToCart({
    Key key,
    this.catalog,
  }) : super(key: key);

  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(catalog) ?? false;

    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(StadiumBorder()),
        backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
      ),
      onPressed: () {
        if (!isInCart) {
          isInCart = isInCart.toggle();

          final _catalog = CatalogModel();
          _cart.catalog = _catalog;
          _cart.add(catalog);

          // setState(() {});
        }
      },
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
