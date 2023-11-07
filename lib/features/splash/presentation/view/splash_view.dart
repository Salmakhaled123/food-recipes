import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodrecipes/core/utils/app_router.dart';
import 'package:foodrecipes/core/utils/assets.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../../../core/constants.dart';
import '../../../../core/utils/styles.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);
  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navigateToHomeView();
    super.initState();
  }
  void navigateToHomeView() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        GoRouter.of(context).push(AppRouter.homeView);
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.green [300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: 350.h,
              child: Lottie.asset(
                AppAssets.splash,
              )),
          AnimatedTextKit(animatedTexts: [
            ColorizeAnimatedText('Recipe App',
                textStyle: Styles.textStyleSize45WeightBold, colors: colors),
          ]),
        ],
      ),
    );
  }
}


