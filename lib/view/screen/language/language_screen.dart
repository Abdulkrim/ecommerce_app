import 'package:ecommerce_app/view/wiget/language/custom_button_lang.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose Lan",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButtonLang(
              textButton: "Ar",
              onPressed: () {},
            ),
            CustomButtonLang(
              textButton: "En",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
