import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodrecipes/features/recipe_details/presentation/view/widgets/recipe_image_item.dart';
import 'package:foodrecipes/features/recipe_details/presentation/view/widgets/recipe_instructions_item.dart';
import 'package:foodrecipes/features/recipe_details/presentation/view_model/recipe_details_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/widgets/custom_loading_indicator.dart';
import 'custom_button.dart';
class RecipeViewBody extends StatelessWidget {
  const RecipeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeDetailsCubit, RecipeDetailsState>(
      builder: (context, state) {
        if(state is RecipeDetailsSuccess)
          {
            return Column(
              children: [
                Expanded(child: ListView(physics: const BouncingScrollPhysics(),
                  children: [
                  RecipeImageItem(model: state.meals ),
                  RecipeInstructionsItem(model:state.meals),
                ],)),
                 CustomButton(onPressed: ()async
                 {
                  await launchUrl(Uri.parse(state.meals.strYoutube!));
                }),


              ],
            );
          }
        return  const CustomLoadingIndicator();

      },
    );
  }
}


