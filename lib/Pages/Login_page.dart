import 'package:awesom/uTils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Image.asset(
              "assest/images/login_image.png",
              fit: BoxFit.cover,
              height: 250,
            ),
            // SizedBox(
            //   height: 0.0,
            //   // child: Text("Hello"),
            // ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 26,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter UserName",
                      labelText: "UserName",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 18),
              ),
              style: TextButton.styleFrom(minimumSize: Size(300, 40)),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
