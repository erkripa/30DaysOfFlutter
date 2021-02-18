import 'package:awesom/uTils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;

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
              "Welcome $name",
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
                    onChanged: (value) {
                      name = value;
                      setState(() {}); //it called build method again
                    },
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
            InkWell(
              onTap: () async {
                //when click on login button
                setState(() {
                  changedButton = true;
                });
                await Future.delayed(
                  //will stop for 1 second
                  Duration(seconds: 1),
                );
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 40,
                width: changedButton ? 100 : 300,
                // color: Colors.green,
                alignment: Alignment.center,
                child: changedButton
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                decoration: BoxDecoration(
                  // shape: changedButton ? BoxShape.circle : BoxShape.rectangle,
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(changedButton ? 50 : 8),
                ),
              ),
            ),
            // ElevatedButton(
            //   child: Text(
            //     "Login",
            //     style: TextStyle(fontSize: 18),
            //   ),
            //   style: TextButton.styleFrom(minimumSize: Size(300, 40)),
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
