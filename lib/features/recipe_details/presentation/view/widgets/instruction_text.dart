import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/model/Meals.dart';
class InstructionText extends StatelessWidget {
  const InstructionText({
    super.key,
    required this.model,
  });

  final RecipeModel model;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText('${model.strInstructions}',
      trimLines: 4,
      colorClickableText: Colors.green,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Read more',
      trimExpandedText: 'Read less',
      lessStyle:Styles.textStyleSize14WeightBold.copyWith(color: Colors.green) ,
      moreStyle:  Styles.textStyleSize14WeightBold.copyWith(color: Colors.green),
    );
  }
}
