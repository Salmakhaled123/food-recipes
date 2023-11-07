import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodrecipes/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';
import '../../data/model/Meals.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit(this.homeRepo) : super(EgyptianFoodInitial());
  HomeRepo homeRepo;
List<Meals>egyptianFood=[];
  Future <void> fetchEgyptianFood()async
  {
    emit(EgyptianFoodLoading());
    var result= await homeRepo.fetchEgyptianFood();
    result.fold((failure) {
      emit(EgyptianFoodFailure(failure.errorMessage));
    }
        , (egyptianMeals) {
          egyptianFood=egyptianMeals;
          emit(EgyptianFoodSuccess(egyptianMeals));
        });


  }



}
