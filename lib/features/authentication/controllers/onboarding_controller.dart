import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  //Variable
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update Current Index When Page Scroll
  void updatePageIndicator(index){
    currentPageIndex.value = index;
  }

  //jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  //update current index and jump to the next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.offAll(const LoginScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // update current index and jump to the last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}