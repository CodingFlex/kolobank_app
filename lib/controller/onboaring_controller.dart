import 'package:flutter/cupertino.dart';

import '../core/models/onboarding_info.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  bool get isMiddlePage =>
      selectedPageIndex.value == onboardingPages.length - 2;
  bool get isFirstPage => selectedPageIndex.value == onboardingPages.length - 3;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      //go to home page
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/images/Onboarding1.png', 'Welcome to Kolo Bank',
        'Bringing banking commfort to your doorstep'),
    OnboardingInfo(
        'assets/images/Onboarding2.png',
        'Make Transactions with ease',
        'Find new opportunity to make payment without stress'),
    OnboardingInfo('assets/images/Onboarding1.png', 'Let\'s Go',
        'Enjoy the banking adventure ahead'),
  ];
}
