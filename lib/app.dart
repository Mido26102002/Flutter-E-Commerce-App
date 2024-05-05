import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waflo_admin/features/authentication/screens/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
