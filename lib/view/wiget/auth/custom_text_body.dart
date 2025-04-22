    import 'package:flutter/material.dart';

class CustomTextBody extends StatelessWidget {
  const CustomTextBody({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            );
  }
}