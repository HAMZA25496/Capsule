
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_route.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../features/auth/login_binding.dart';
import '../../features/auth/login_screen.dart';


class AppRoutes{
  static const String login = '/login';
  static const String register = '/register';
  static const String otpMob = '/otpmob';
  static const String otpEmail = '/otpemail';
  static const String newPass = '/newpass';
  static const String forgotPass = '/forgotpass';
  static const String signature = '/signature';


  static String getLoginRoute() => login;
  static String getRegisterRoute() => register;
  static String getOtpMobRoute() => otpMob;
  static String getOtpEmailRoute() => otpEmail;
  static String getNewPasswordRoute() => newPass;
  static String getForgotPassRoute() => forgotPass;
  static String getSignatureRoute() => signature;


  static generateRoute(RouteSettings settings){
    switch (settings.name){
      case login:
        return GetPageRoute(
          settings: settings,
          routeName: getLoginRoute(),
          page: ()=> const LoginScreen()
        );

        default:
          return null;
    }
  }

  static getPages()=>[
    GetPage(
        name: login,
        page: () => const LoginScreen(),
        binding: LoginBinding(),
    ),

  ];

}