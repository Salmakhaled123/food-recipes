import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:foodrecipes/core/errors/failure.dart';
import 'package:foodrecipes/core/utils/api_service.dart';

import 'package:foodrecipes/features/home/data/model/Categories.dart';

import '../../../home/data/model/CategoriesModel.dart';
import 'categories_repo.dart';

class CategoriesRepoImp implements CategoriesRepo{
  ApiService apiService;
  CategoriesRepoImp(this.apiService);
  @override
  Future<Either<Failure, List<Categories>>> fetchFoodCategories() async {
    try {
      var result = await apiService.get('categories.php');
      var data = CategoriesModel.fromJson(result);
      return right(data.categories!);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }


}