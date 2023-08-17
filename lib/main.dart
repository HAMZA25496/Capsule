import 'package:capsule/presentation/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: "Open Sans"
      ),
      home:   SafeArea(
        child: Scaffold(
          body: LoginScreen(),
        ),
      )
    );
  }
}

