class CategoryModel {
  final String? mainCategory;
  final String? subCategory;

  CategoryModel(
    {
      required this.mainCategory,
      required this.subCategory
    }
  );

  factory CategoryModel.fromJson(Map<String, dynamic> json){ 
      return CategoryModel(
          mainCategory: json["mainCategory"],
          subCategory: json["subCategory"],
      );
  }

  Map<String, dynamic> toJson() {
    return {
      "mainCategory": mainCategory,
      "subCategory": subCategory,
    };
  }

  @override
  String toString(){
      return "$mainCategory, $subCategory, ";
  }
}