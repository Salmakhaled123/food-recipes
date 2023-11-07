import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:foodrecipes/core/errors/failure.dart';
import 'package:foodrecipes/core/utils/api_service.dart';
import 'package:foodrecipes/features/home/data/model/Meals.dart';
import 'package:foodrecipes/features/home/data/model/MealsModel.dart';
import 'package:foodrecipes/features/home/data/repos/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  ApiService apiService;
  HomeRepoImp(this.apiService);
  @override

  @override
  Future<Either<Failure, List<Meals>>> fetchEgyptianFood() async {
    {
      try {
        var result = await apiService.get('filter.php?a=Egyptian');
        var data = MealsModel.fromJson(result);
        return right(data.meals!);
      } catch (e)
      {
        if (e is DioException) {
          return left(ServerFailure.fromDioError(e));
        }
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
