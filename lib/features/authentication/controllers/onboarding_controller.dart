import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  //Variable

  // Update Current Index When Page Scroll
  void updatePageIndicator(index){}

  //jump to the specific dot selected page
  void dotNavigationClick(index) {}

  //update current index and jump to the next page
  void nextPage(){}

  // update current index and jump to the last page
  void skipPage(){}
}