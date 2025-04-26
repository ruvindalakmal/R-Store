import 'package:flutter/material.dart';
import 'package:r_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardController.instance;
    final dark = THelperFunction.isDarkMode(context);

    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBar() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(controller : controller.pageController ,onDotClicked: controller.doNavigationClick, count : 3 , effect:  ExpandingDotsEffect(activeDotColor: dark ? TColors.light : TColors.dark , dotHeight: 6),));
  }
}
