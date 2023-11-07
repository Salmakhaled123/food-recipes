part of 'home_cubit.dart';

@immutable
abstract class HomeStates {}

class EgyptianFoodInitial extends HomeStates {}
class EgyptianFoodLoading extends HomeStates {}
class EgyptianFoodSuccess extends HomeStates {
  final List<Meals> meals;
  EgyptianFoodSuccess(this.meals);
}
class EgyptianFoodFailure extends HomeStates {
  final String errorMessage;
  EgyptianFoodFailure(this.errorMessage);
}



