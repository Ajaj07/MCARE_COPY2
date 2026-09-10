import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variabels
  final pageConroller = PageController();
  RxInt currentIndex = 0.obs;
  // update current page when page is scrolled
  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  //jump to specific dot selected page
  void dotNavigationClick(index) {
    currentIndex.value = index;
    pageConroller.jumpToPage(index);
  }

  //update  current page index when next was clicked
  void nextPage() {
    if (currentIndex.value == 2) {
      Get.offAllNamed('/splashScreen2');
    }
    currentIndex.value++;
    pageConroller.jumpToPage(currentIndex.value);
  }
}
