import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sushi_app/pages/home/home.dart';
import 'package:sushi_app/utils/constant/colors.dart';
import 'package:sushi_app/utils/constant/image_string.dart';
import 'package:sushi_app/utils/constant/text_string.dart';
import 'package:iconsax/iconsax.dart';

class Onboarding extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0, color: Colors.white);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        
        fontSize: 28.0,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: AppColor.primary,
      allowImplicitScrolling: true,
      autoScrollDuration: 4000,
      infiniteAutoScroll: true,
      globalFooter: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
        child: SizedBox(
          width: double.infinity,
          height: 60,
          child: GestureDetector(
            onTap: () => _onIntroEnd(context),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Let\'s go eat Sushi!',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: AppColor.primary,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_right_alt, color: AppColor.primary,),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: TextApp.onboardingTitle1,
          body: TextApp.onboardingSub1,
          image: Container(
            width: 300,
            height: 300,
            child: Image.asset(ImageApp.splashImage),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: TextApp.onboardingTitle2,
          body: TextApp.onboardingSub2,
          image: Container(
            width: 300,
            height: 300,
            child: Image.asset(ImageApp.sushiFamily),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: TextApp.onboardingTitle3,
          body: TextApp.onboardingSub3,
          image: Container(
            width: 300,
            height: 300,
            child: Image.asset(ImageApp.logoApp),
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      showDoneButton: false,
      showNextButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      // back: const Icon(Icons.arrow_back),
      // skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      // next: const Icon(Icons.arrow_forward),
      // done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: AppColor.purpleSoft,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
