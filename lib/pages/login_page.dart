import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/support_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/images/login.jpg",
                height: 200.0,
                width: 200.0,
              ),
            ),
            Center(
              child: Text(
                "Sign In",
                style: SupportWidget.semiBoldTextStyle(),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Text(
                "Please enter the details below to continue",
                style: SupportWidget.lightTextStyle(),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Email",
              style: SupportWidget.semiBoldTextStyle(),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xfff2f2f2),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Email",
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Password",
              style: SupportWidget.semiBoldTextStyle(),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xfff2f2f2),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Password",
                  prefixIcon: Icon(Icons.lock_outline),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.green, fontSize: 15.0),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dont't have an account?",
                  style: SupportWidget.lightTextStyle(),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 17.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
