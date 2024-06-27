class CookingData {
  final String? DishName;
  final String? Description;
  final String? Spice;
  final String? PrepTime;
  final String? CookTime;
  final String? Ingredients;
  final String? Instructions;

  CookingData({
    this.DishName,
    this.Description,
    this.Spice,
    this.PrepTime,
    this.CookTime,
    this.Ingredients,
    this.Instructions,
  });

  factory CookingData.fromJson(Map<String, dynamic> json) {
    return CookingData(
      DishName: json['Dish Name'],
      Description: json['Description'],
      Spice: json['Spice'],
      PrepTime: json['Prep Time'],
      CookTime: json['Cook Time'],
      Ingredients: json['Ingredients'],
      Instructions: json['Instructions'],
    );
  }
}
