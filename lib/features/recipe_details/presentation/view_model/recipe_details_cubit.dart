import 'package:bloc/bloc.dart';
import 'package:foodrecipes/features/recipe_details/data/model/Meals.dart';
import 'package:foodrecipes/features/recipe_details/data/repos/recipe_details_repo.dart';
import 'package:meta/meta.dart';
part 'recipe_details_state.dart';

class RecipeDetailsCubit extends Cubit<RecipeDetailsState> {
  RecipeDetailsCubit(this.recipeDetailsRepo) : super(RecipeDetailsInitial());
  RecipeDetailsRepo recipeDetailsRepo;
  Future <void> showRecipeDetails(String recipeId)async
  {
    emit(RecipeDetailsLoading());
   var result= await recipeDetailsRepo.showRecipeDetails(recipeId);
   result.fold((failure) {
     emit(RecipeDetailsFailure(failure.errorMessage));
   }
   , (recipeDetails)
    {
      emit(RecipeDetailsSuccess(recipeDetails));
    }
       );

  }
}
