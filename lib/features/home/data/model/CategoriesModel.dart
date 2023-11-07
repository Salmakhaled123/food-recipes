import 'Categories.dart';
class CategoriesModel {
  CategoriesModel({
      this.categories,});

  CategoriesModel.fromJson(dynamic json) {
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(Categories.fromJson(v));
      });
    }
  }
  List<Categories>? categories;


}