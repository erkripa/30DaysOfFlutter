import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 20.0),
          Image.asset(
            "assest/images/login_image.png",
            fit: BoxFit.cover,
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
          ElevatedButton(
            child: Text("Login"),
            onPressed: () {
              print("Hi Welcome to Login Page");
            },
          ),
        ],
      ),
    );
  }
}
