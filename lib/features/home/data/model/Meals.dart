class Meals {
  Meals({
      this.strMeal, 
      this.strMealThumb, 
      this.idMeal,});

  Meals.fromJson(dynamic json) {
    strMeal = json['strMeal'];
    strMealThumb = json['strMealThumb'];
    idMeal = json['idMeal'];
  }
  String? strMeal;
  String? strMealThumb;
  String? idMeal;


}