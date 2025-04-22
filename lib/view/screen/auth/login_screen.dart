import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_button_auth.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_body.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_form_field_auth.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_title_auth.dart';
import 'package:ecommerce_app/view/wiget/auth/logo_auth.dart';
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
            LogoAuth(),
            CustomTextTitleAuth(text: "Welcome Back"),
            SizedBox(
              height: 10,
            ),
            CustomTextBody(text: "Sign In With Email And Password OR Continue With Socail Media"),
            SizedBox(
              height: 10,
            ),
            CustomTextFormFieldAuth(hintText: "Enter Your Email",lable: "Email",iconData: Icons.email_outlined,),
            CustomTextFormFieldAuth(hintText: "Enter Your Password",lable: "Password",iconData: Icons.lock_clock_outlined,),
            Text("Forget Password", textAlign: TextAlign.end,),
            CustomButtonAuth(text: 'Sign In',onPressed: () {},),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ? "),
                InkWell(
                  child: Text("Sign Up",style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.bold),
                ),
            ),],
            ),
          ],
        ),
      ),
    );
  }
}
