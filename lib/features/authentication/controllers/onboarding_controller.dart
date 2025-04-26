import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardController extends GetxController {
  static OnBoardController get instance => Get.find();


  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index when page Scrolls
  void updatePageIndicator(index) => currentPageIndex = index;

  /// Jump to Specific dot selected page
  void doNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update current index and jump to next page
  void nextPage() {
    if(currentPageIndex.value == 2){
      // Get.to(LoginScreen);
    }else{
      final page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update current index and jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}