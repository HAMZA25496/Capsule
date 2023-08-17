import 'package:capsule/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      height: 53,
      width: size.width * 0.77,
      decoration: BoxDecoration(
          border: Border.all(color: kPinkColor),
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        keyboardType: TextInputType.number,
        cursorColor: kPinkColor,
        style: TextStyle(color: kPinkColor),
        decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            prefixIcon: Icon(
              Icons.phone,
              color: kPinkColor,
            ),
            hintText: "Mobile Number",
            hintStyle: TextStyle(color: kPinkColor)),
      ),
    );

  }
}
