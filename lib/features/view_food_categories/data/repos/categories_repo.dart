import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../home/data/model/Categories.dart';

abstract class CategoriesRepo{
  Future <Either<Failure,List<Categories>>>fetchFoodCategories();

}