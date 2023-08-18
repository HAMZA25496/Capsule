
import 'package:capsule/src/features/auth/otp/otp_binding.dart';
import 'package:capsule/src/features/auth/otp/otp_screen.dart';
import 'package:capsule/src/features/auth/profile_info/profile_info_binding.dart';
import 'package:capsule/src/features/auth/profile_info/profile_info_screen.dart';
import 'package:capsule/src/features/auth/signup/signup_binding.dart';
import 'package:capsule/src/features/auth/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_route.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../features/auth/login/login_binding.dart';
import '../../features/auth/login/login_screen.dart';


class AppRoutes{
  static const String login = '/login';
  static const String signup = '/signup';
  static const String otp = '/otp';
  static const String profileInfo = '/profileinfo';
  static const String newPass = '/newpass';
  static const String forgotPass = '/forgotpass';
  static const String signature = '/signature';


  static String getLoginRoute() => login;
  static String getSignUpRoute() => signup;
  static String getOtpRoute() => otp;
  static String getProfileInfoRoute() => profileInfo;
  static String getNewPasswordRoute() => newPass;
  static String getForgotPassRoute() => forgotPass;
  static String getSignatureRoute() => signature;


  static generateRoute(RouteSettings settings){
    switch (settings.name){
      case login:
        return GetPageRoute(
          settings: settings,
          routeName: getLoginRoute(),
          page: ()=>  LoginScreen()
        );
      case signup:
        return GetPageRoute(
            settings: settings,
            routeName: getSignUpRoute(),
            page: ()=>  SignupScreen()
        );
      case otp:
        return GetPageRoute(
            settings: settings,
            routeName: getOtpRoute(),
            page: ()=>  OtpScreen()
        );
      case profileInfo:
        return GetPageRoute(
            settings: settings,
            routeName: getProfileInfoRoute(),
            page: ()=>  ProfileInfoScreen()
        );
        default:
          return null;
    }
  }

  static getPages()=>[
    GetPage(
        name: login,
        page: () =>  LoginScreen(),
        binding: LoginBinding(),
    ),
    GetPage(
      name: signup,
      page: () =>  SignupScreen(),
      binding: SignupBindings(),
    ),
    GetPage(
      name: otp,
      page: () =>  OtpScreen(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: profileInfo,
      page: () =>  ProfileInfoScreen(),
      binding: ProfileInfoBinding(),
    ),
  ];

}