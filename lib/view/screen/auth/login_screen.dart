import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Text(
          "Sign In",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome Back",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Sign In With Email And Password OR Continue With Socail Media",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5 ),
                label: Text("Email"),
                suffixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
