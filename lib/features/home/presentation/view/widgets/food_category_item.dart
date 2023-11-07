import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodrecipes/core/utils/styles.dart';
import 'package:foodrecipes/features/home/data/model/Categories.dart';
import 'package:foodrecipes/features/home/presentation/view_model/home_cubit.dart';

class FoodCategoryItem extends StatelessWidget {
  const FoodCategoryItem({
    super.key,
    required this.categoriesModel,
  });

  final Categories categoriesModel;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Padding(
        padding: EdgeInsets.only(right: 10.w),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: Image.network('${categoriesModel.strCategoryThumb}',
            fit: BoxFit.fill,
          ),
        ),
      ),
      BlocBuilder<HomeCubit, HomeStates>(
        builder: (context, state) {
          return Text(
              '${categoriesModel.strCategory}'.tr(),
              style: Styles.textStyleSize21WeightBold
          );
        },
      )
    ]);
  }
}
