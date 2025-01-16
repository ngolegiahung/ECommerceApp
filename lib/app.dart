import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/theme/theme.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
    );
  }
}
