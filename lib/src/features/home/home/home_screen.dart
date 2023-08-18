import 'package:capsule/src/components/banner_chip.dart';
import 'package:capsule/src/components/custom_divider.dart';
import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(ImgAssets.personIllus),
                ),
                CustomDivider(
                  width: width_10,
                ),
                GradientText(
                    'Hey, Mizan',
                    gradientType: GradientType.linear,
                    gradientDirection: GradientDirection.ttb,
                    colors: [
                      AppColors.pinkGrade1,
                      AppColors.pinkGrade2,],
                    style:TextStyle(fontSize: font_18, fontFamily: 'OpenSans', fontWeight: fontWeight600,
                    )
                )
              ],
            ),

            BannerChip(
              onPress: (){
                print('Success');
              },
            ),
            CustomText(
                text: strSubjects,
                color1: AppColors.black,
                fontWeight: fontWeight600,
                fontSize: font_13)
          ],
        ),
      ),
    );
  }
}
