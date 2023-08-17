
import 'package:capsule/src/components/custom_appbar.dart';
import 'package:capsule/src/components/custom_button.dart';
import 'package:capsule/src/components/custom_divider.dart';
import 'package:capsule/src/components/custom_textfield.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:capsule/src/core/constants/strings.dart';
import 'package:capsule/src/features/auth/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/font_weight.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar(),
      title: '',
        onPress: (){},
      ),
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: margin_10),
        children: [
          CustomDivider(
            height: height_10,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Image(image: AssetImage(ImgAssets.logInAc), height: height_60,)),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: margin_30),
            child: Column(
              children: [
                CustomDivider(
                  height: height_40,
                ),
                Image(image: AssetImage(ImgAssets.logInArt), height: height_180,),

                CustomDivider(
                  height: height_60,
                ),


                CustomTextField(
                    labelText: strMobNo,
                    prefixIcon: Image(image: AssetImage(ImgAssets.fonIcon)),
                    obscure: false,
                    height: height_10),

                CustomDivider(
                  height: height_20,
                ),

                CustomButton(
                    text: strGetOtp,
                    color: AppColors.white,
                    fontWeight: fontWeight600,
                    font: font_13,
                    onPress: (){}),
                CustomDivider(
                  height: height_20,
                ),
                CustomDivider(
                  isDivider: true,
                  color: AppColors.greyColor,
                  height: 10,
                  text: strContinue,
                ),

              ],
            ),
          )

        ],
      )),
    );
  }
}
