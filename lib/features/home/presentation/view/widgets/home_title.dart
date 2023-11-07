import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          style: Styles.textStyleSize18WeightBold,
          text: 'Rec',
          children: [
            TextSpan(
                text: 'i',
                style: Styles.textStyleSize21WeightBold.copyWith(
                  color: Colors.pink,
                )),
            TextSpan(text: 'pes', style: Styles.textStyleSize18WeightBold)
          ]),
    );
  }
}
