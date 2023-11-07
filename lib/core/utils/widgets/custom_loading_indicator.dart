import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedTextKit(isRepeatingAnimation: true, animatedTexts: [
        WavyAnimatedText('Loading',
            textStyle: TextStyle(fontSize: 34.sp, color: Colors.green))
      ]),
    );
  }
}
