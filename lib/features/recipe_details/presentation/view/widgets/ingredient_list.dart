import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants.dart';
class IngredientsList extends StatelessWidget {
  const IngredientsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      ...List.generate(ingredients.length, (index) {
        return Padding(
          padding:  EdgeInsets.only(right: 10.w,bottom: 10.h),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: Container(color:index%2==0? Colors.green:Colors.green[200],
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                  child: Text('${measures[index]} ${ingredients[index]}',),
                ),)),
        );
      })
    ],);
  }
}
