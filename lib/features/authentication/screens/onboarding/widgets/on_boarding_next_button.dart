import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:r_store/utils/constants/colors.dart';
import 'package:r_store/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../controllers/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {

  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBar(),
      child: ElevatedButton(
        onPressed: () => OnBoardController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder() , backgroundColor: dark ? TColors.primary : Colors.black),
        child: Icon(Iconsax.arrow_right_3),),
    );
  }
}
