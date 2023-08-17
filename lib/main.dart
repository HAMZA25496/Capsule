import 'package:capsule/src/core/config/routes.dart';
import 'package:capsule/src/features/auth/login_binding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/smart_management.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());

   FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (BuildContext context, Widget? child) {
      return
        GetMaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
                fontFamily: "Open Sans"
            ),
          debugShowCheckedModeBanner: false,
          smartManagement: SmartManagement.full,
          initialRoute: AppRoutes.getLoginRoute(),
          // !firstLogin ? AppRoutes.getLoginRoute() : AppRoutes.getIntroRoute(),
          initialBinding: LoginBinding(),
          // !firstLogin ? LoginBinding() : IntroBinding(),
          getPages: AppRoutes.getPages(),
          onGenerateRoute: (settings) => AppRoutes.generateRoute(settings),
        );
    });
  }
}

