import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodrecipes/core/utils/app_router.dart';
import 'package:foodrecipes/core/utils/language_cubit.dart';
import 'package:foodrecipes/features/home/presentation/view/widgets/egyptian_food_list_view.dart';
import 'package:foodrecipes/features/home/presentation/view_model/home_cubit.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
        BlocBuilder<LanguageCubit, LanguageState>(
          builder: (context, state) {
            return SliverToBoxAdapter(
              child: Row(
                children: [
                  Text('Categories'.tr(),style: Styles.textStyleSize16WeightNormal),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.foodCategoriesView);
                      },
                      child: Text(
                        'View All'.tr(),
                        style: Styles.textStyleSize18WeightBold.copyWith(
                            color: Colors.green),
                      ))
                ],
              ),
            );
          },
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 10.h,
          ),
        ),
        const EgyptianFoodListView(),
      ]),
    );
  }
}
