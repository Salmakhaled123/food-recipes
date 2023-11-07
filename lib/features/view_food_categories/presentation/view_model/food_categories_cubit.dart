import 'package:bloc/bloc.dart';
import 'package:foodrecipes/features/view_food_categories/data/repos/categories_repo.dart';
import 'package:meta/meta.dart';

import '../../../home/data/model/Categories.dart';

part 'food_categories_state.dart';

class FoodCategoriesCubit extends Cubit<FoodCategoriesState> {
  FoodCategoriesCubit(this.categoriesRepo) : super(FoodCategoriesInitial());
  CategoriesRepo categoriesRepo;
  Future <void> fetchFoodCategories()async
  {
    emit(FoodCategoriesLoading());
    var result= await categoriesRepo .fetchFoodCategories();
    result.fold((failure) {
      emit(FoodCategoriesFailure(failure.errorMessage));
    }
        , (foodCategories) {
          emit(FoodCategoriesSuccess(foodCategories));
        });


  }
}
