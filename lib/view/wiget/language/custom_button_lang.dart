import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class CustomButtonLang extends StatelessWidget {
  const CustomButtonLang({super.key, required this.textButton, this.onPressed});
  final String textButton;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.symmetric(horizontal: 100),
              width: double.infinity,
              child: MaterialButton(
                color: AppColor.primaryColor,
                textColor: AppColor.white ,
                onPressed: onPressed,
                child: Text(textButton,style: TextStyle(fontWeight: FontWeight.bold),),
                ),
            );
  }
}