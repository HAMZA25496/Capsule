
import 'package:capsule/src/features/auth/otp/otp_binding.dart';
import 'package:capsule/src/features/auth/otp/otp_screen.dart';
import 'package:capsule/src/features/auth/profile_info/profile_info_binding.dart';
import 'package:capsule/src/features/auth/profile_info/profile_info_screen.dart';
import 'package:capsule/src/features/auth/signup/signup_binding.dart';
import 'package:capsule/src/features/auth/signup/signup_screen.dart';
import 'package:capsule/src/features/home/home/home_screen.dart';
import 'package:capsule/src/features/home/navbar/navbar.dart';
import 'package:capsule/src/features/home/navbar/navbar_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_route.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../features/auth/login/login_binding.dart';
import '../../features/auth/login/login_screen.dart';
import '../../features/home/home/home_binding.dart';


class AppRoutes{
  static const String login = '/login';
  static const String signup = '/signup';
  static const String otp = '/otp';
  static const String profileInfo = '/profileinfo';
  static const String navBar = '/navbar';
  static const String home = '/home';
  static const String signature = '/signature';


  static String getLoginRoute() => login;
  static String getSignUpRoute() => signup;
  static String getOtpRoute() => otp;
  static String getProfileInfoRoute() => profileInfo;
  static String getNavBarRoute() => navBar;
  static String getHomeRoute() => home;
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
      case navBar:
        return GetPageRoute(
            settings: settings,
            routeName: getNavBarRoute(),
            page: ()=>  NavBarScreen()
        );
      case home:
        return GetPageRoute(
            settings: settings,
            routeName: getHomeRoute(),
            page: ()=>  HomeScreen()
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
    GetPage(
      name: navBar,
      page: () =>  NavBarScreen(),
      binding: NavBarBinding(),
    ),
    GetPage(
      name: home,
      page: () =>  HomeScreen(),
      binding: HomeBinding(),
    ),
  ];

}