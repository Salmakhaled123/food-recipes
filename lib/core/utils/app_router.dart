import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodrecipes/core/utils/service_locator.dart';
import 'package:foodrecipes/features/home/data/repos/home_repo_imp.dart';
import 'package:foodrecipes/features/home/presentation/view/home_view.dart';
import 'package:foodrecipes/features/home/presentation/view_model/home_cubit.dart';
import 'package:foodrecipes/features/recipe_details/presentation/view/recipe_view.dart';
import 'package:foodrecipes/features/search/presentation/view/search_view.dart';
import 'package:foodrecipes/features/splash/presentation/view/splash_view.dart';
import 'package:foodrecipes/features/view_food_categories/data/repos/catgeories_repo_imp.dart';
import 'package:foodrecipes/features/view_food_categories/presentation/view_model/food_categories_cubit.dart';
import 'package:go_router/go_router.dart';
import '../../features/view_food_categories/presentation/view/food_categories_view.dart';

class AppRouter {
  static String homeView = '/homeView';
  static String searchView = '/searchView';
  static String recipeView = '/recipeView';
  static String foodCategoriesView = '/foodCategoriesView';
  static String recipeDetails = '/recipeDetails';

  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: homeView,
        builder: (context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: foodCategoriesView,
        builder: (context, GoRouterState state) {
          return MultiBlocProvider(providers: [
            BlocProvider(create: (context) => FoodCategoriesCubit(
                getIt.get<CategoriesRepoImp>())
              ..fetchFoodCategories()),
          ],
              child: const FoodCategoriesView());
        },
      ),
      GoRoute(
        path: searchView,
        builder: (context, GoRouterState state) {
          return const SearchView();
        },
      ),
      GoRoute(
        path: recipeView,
        builder: (context, GoRouterState state) {
          return const RecipeView();
        },
      ),
    ],
  );
}
