import 'package:flutter/material.dart';

class CustomTextFormFieldAuth extends StatelessWidget {
  const CustomTextFormFieldAuth({
    super.key, 
    required this.hintText,
     required this.lable,
      required this.iconData,
       required this.myController,
       required this.validator,

       });
  final String hintText;
  final String lable;
  final IconData iconData;
  final TextEditingController myController;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20,),
      child: TextFormField(
                validator: validator,
                controller: myController,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(fontSize: 14 ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5 ),
                  label: Container(
                    margin: EdgeInsets.symmetric(horizontal: 9),
                    child: Text(lable),
                    ),
                  suffixIcon: Icon(iconData),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
    );
  }
}