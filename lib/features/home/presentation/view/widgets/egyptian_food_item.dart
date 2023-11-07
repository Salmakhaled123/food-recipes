import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodrecipes/core/utils/language_cubit.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/model/Meals.dart';

class EgyptianFoodItem extends StatelessWidget {
  const EgyptianFoodItem({
    super.key,
    required this.mealsModel,
  });

  final Meals mealsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.h,
      width: 270.w,
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(16.r)),
      child: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: Image.network(
              width: 300.w,
              height: 240.h,
              fit: BoxFit.fill,
              mealsModel.strMealThumb!),
        ),
        SizedBox(
          height: 5.h,
        ),
        BlocBuilder<LanguageCubit, LanguageState>(
          builder: (context, state) {
            return Text(
                mealsModel.strMeal!.tr(),
                style: Styles.textStyleSize18WeightBold
            );
          },
        ),

      ]),
    );
  }
}
