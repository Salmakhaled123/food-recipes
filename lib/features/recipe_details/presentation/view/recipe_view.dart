import 'package:flutter/material.dart';
import 'package:foodrecipes/features/recipe_details/presentation/view/widgets/recipe_view_body.dart';
class RecipeView extends StatelessWidget {
  const RecipeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: RecipeViewBody()),);
  }
}
