import 'package:flutter/material.dart';
import '../core/constants/dimensions.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import 'custom_divider.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({Key?key,
     required this.labelText,
     required this.prefixIcon,
     this.suffixIcon,
     required this.obscure,
     required this.height,

  }): super(key:key);

   final String labelText;
   final Image? prefixIcon;
   final dynamic suffixIcon;
   final bool obscure;
   final double height;

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            cursorColor: AppColors.pinkGrade2,
            controller: controller,
            obscureText: obscure,
            style: TextStyle(color: AppColors.pinkGrade2, fontSize: font_12, fontWeight: fontWeight400, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
              fillColor: AppColors.pinkFillColor,
              filled: true,
              labelText: labelText,
              labelStyle: TextStyle(color: AppColors.pinkGrade2, fontSize: font_12, fontWeight: fontWeight400, fontFamily: 'OpenSans'),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius_10),
                borderSide: BorderSide(color: AppColors.pinkGrade2)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(radius_10),
                  borderSide: BorderSide(color: AppColors.pinkGrade2)
              ),
            ),
          ),
        ),
        CustomDivider(
          height: height_15,
          isDivider: false,
        ),
      ],
    );
  }
}
