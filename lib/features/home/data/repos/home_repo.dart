import 'package:dartz/dartz.dart';
import 'package:foodrecipes/core/errors/failure.dart';
import 'package:foodrecipes/features/home/data/model/Meals.dart';

abstract class HomeRepo{
  Future <Either<Failure,List<Meals>>>fetchEgyptianFood();

}