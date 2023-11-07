import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/data/repos/home_repo_imp.dart';
import '../../features/recipe_details/data/repos/recipe_details_repo_imp.dart';
import '../../features/view_food_categories/data/repos/catgeories_repo_imp.dart';
import 'api_service.dart';

final getIt = GetIt.instance;
void setupServiceLocator()
{
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(
        getIt.get<ApiService>()
    ),
  );
  getIt.registerSingleton<CategoriesRepoImp>(
    CategoriesRepoImp(
        getIt.get<ApiService>()
    ),
  );
  getIt.registerSingleton<RecipeDetailsRepoImp>(
    RecipeDetailsRepoImp(
        getIt.get<ApiService>()
    ),
  );
}