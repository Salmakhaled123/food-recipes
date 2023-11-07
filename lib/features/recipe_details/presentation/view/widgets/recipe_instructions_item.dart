import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodrecipes/features/recipe_details/data/model/Meals.dart';
import '../../../../../core/utils/styles.dart';
import 'ingredient_list.dart';
import 'instruction_text.dart';
class RecipeInstructionsItem extends StatelessWidget {
  final RecipeModel model;
  const RecipeInstructionsItem({
    super.key,
    required this.model,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children:
          [
            InstructionText(model: model),
                Text(
          'Ingredients',
          style: Styles.textStyleSize18WeightBold.copyWith(color: Colors.green),
        ),
           SizedBox(height: 10.h,),
           const IngredientsList(),



      ]),
    );
  }
}


