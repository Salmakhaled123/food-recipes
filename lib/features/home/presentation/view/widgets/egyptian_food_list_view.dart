import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodrecipes/core/utils/app_router.dart';
import 'package:foodrecipes/features/home/presentation/view_model/home_cubit.dart';
import 'package:foodrecipes/features/recipe_details/presentation/view_model/recipe_details_cubit.dart';
import 'package:go_router/go_router.dart';
import '../../../../view_food_categories/presentation/view/widgets/custom_shimmer_loading_widget.dart';
import 'egyptian_food_item.dart';

class EgyptianFoodListView extends StatelessWidget {
  const EgyptianFoodListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        var cubit=BlocProvider.of<HomeCubit>(context);
        if(state is EgyptianFoodSuccess)
          {
            return SliverList(
                delegate: SliverChildBuilderDelegate(
                    childCount: cubit.egyptianFood.length,
                        (context, index)
                    {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child:  GestureDetector(onTap: (){
                          GoRouter.of(context).push(AppRouter.recipeView);
                          BlocProvider.of<RecipeDetailsCubit>(context).showRecipeDetails(cubit.egyptianFood[index].idMeal!);
                          print(cubit.egyptianFood[index].idMeal);
                        },
                            child: EgyptianFoodItem(mealsModel: cubit.egyptianFood[index])),
                      );
                    }));

          }
        else if (state is EgyptianFoodFailure)
          {
            return Center(child: Text(state.errorMessage),);
          }
        return  SliverList(delegate:
        SliverChildBuilderDelegate(childCount: 10,
                (context, index) {
              return const CustomShimmerLoadingWidget();
            }));



      },
    );
  }
}
