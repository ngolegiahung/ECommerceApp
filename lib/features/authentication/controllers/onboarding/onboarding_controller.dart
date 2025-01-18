import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  RxInt currentPage = 0.obs;

  void updatePageIndicator(index) {
    // Update page indicator
    currentPage.value = index;
  }

  void dotNavigationClick(index) {
    // Dot navigation
    currentPage.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    // Next page
    if (currentPage.value < 2) {
      currentPage.value++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      Get.offAll(const LoginScreen());
    }
  }

  void skipPage() {
    Get.offAll(const LoginScreen());
  }
}
