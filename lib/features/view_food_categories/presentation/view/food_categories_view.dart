import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodrecipes/features/home/presentation/view/widgets/food_category_item.dart';
import 'package:foodrecipes/features/view_food_categories/presentation/view/widgets/custom_shimmer_loading_widget.dart';
import '../view_model/food_categories_cubit.dart';
class FoodCategoriesView extends StatelessWidget {
  const FoodCategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FoodCategoriesCubit, FoodCategoriesState>(
        builder: (context, state) {
          if (state is FoodCategoriesSuccess) {
            return ListView.builder(physics: const BouncingScrollPhysics(),
                itemCount: state.foodCategories.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                  child: FoodCategoryItem(
                      categoriesModel: state.foodCategories[index]),
                ));
          }
          return SafeArea(
            child: ListView.builder(
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.h),
                  child: const CustomShimmerLoadingWidget(),
                )),
          );
        },
      ),
    );
  }
}
