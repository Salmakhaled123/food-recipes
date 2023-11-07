class Categories {
  Categories({
      this.idCategory, 
      this.strCategory, 
      this.strCategoryThumb, 
      this.strCategoryDescription,});

  Categories.fromJson(dynamic json) {
    idCategory = json['idCategory'];
    strCategory = json['strCategory'];
    strCategoryThumb = json['strCategoryThumb'];
    strCategoryDescription = json['strCategoryDescription'];
  }
  String? idCategory;
  String? strCategory;
  String? strCategoryThumb;
  String? strCategoryDescription;


}