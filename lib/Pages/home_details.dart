import 'package:awesom/models/catalog.dart';
import 'package:awesom/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.red600.bold.xl3.make(),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(StadiumBorder()),
              ),
              onPressed: () {},
              child: "Buy".text.xl.bold.make(),
            ).wh(100, 40)
          ],
        ).p24(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h40(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4
                          .color(MyTheme.darkbluciesColor)
                          .bold
                          .make(),
                      catalog.desc.text.lg
                          .textStyle(context.captionStyle)
                          .make(),
                    ],
                  ).p32(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
