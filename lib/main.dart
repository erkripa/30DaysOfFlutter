import 'package:awesom/Pages/Home_page.dart';
import 'package:awesom/Pages/Login_page.dart';
import 'package:awesom/Pages/cart_page.dart';
import 'package:awesom/uTils/routes.dart';
import 'package:awesom/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// We learned About Context,and Constraints.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),

      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
