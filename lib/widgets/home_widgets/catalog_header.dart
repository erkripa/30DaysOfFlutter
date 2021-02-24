import 'package:awesom/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.color(MyTheme.darkbluciesColor).xl5.bold.make(),
        "Trending Products".text.xl.make(),
      ],
    );
  }
}
