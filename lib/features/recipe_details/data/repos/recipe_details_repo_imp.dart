import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:foodrecipes/core/constants.dart';
import 'package:foodrecipes/core/errors/failure.dart';
import 'package:foodrecipes/core/utils/api_service.dart';
import 'package:foodrecipes/features/recipe_details/data/model/Meals.dart';
import 'package:foodrecipes/features/recipe_details/data/repos/recipe_details_repo.dart';

class RecipeDetailsRepoImp implements RecipeDetailsRepo{
  ApiService apiService;

  RecipeDetailsRepoImp(this.apiService);

  @override
  Future<Either<Failure, RecipeModel>> showRecipeDetails(String recipeId)async
  {
    ingredients=[];
    measures=[];
    try {
      var result=await apiService.get('lookup.php?i=$recipeId');
      dynamic recipe=RecipeModel.fromJson(result['meals'][0]);
      for(int i=1;i<=20;i++)
        {
          var ingredient=result['meals'][0]['strIngredient$i'];
          var measure=result['meals'][0]['strMeasure$i'];
          if(ingredient!=null  && ingredient.isNotEmpty)
          {
            ingredients.add(ingredient);
            measures.add(measure);
          }
        }
      return right(recipe);
    }  catch (e)
    {
      print(e.toString());
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }


    
  }
  
}