import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:r_store/features/authentication/screens/onboarding/widgets/on_boarding_dot_navigation.dart';
import 'package:r_store/features/authentication/screens/onboarding/widgets/on_boarding_next_button.dart';
import 'package:r_store/features/authentication/screens/onboarding/widgets/on_boarding_page.dart';
import 'package:r_store/features/authentication/screens/onboarding/widgets/on_boarding_skip.dart';
import 'package:r_store/utils/constants/TImages.dart';
import 'package:r_store/utils/constants/TTexts.dart';

import '../../controllers/onboarding_controller.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardController());

    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(),

          /// Circular Button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}



