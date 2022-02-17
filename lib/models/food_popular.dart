//fav food

class PopFood {
  PopFood({
    required this.meals,
  });
  late final List<Foods> meals;

  PopFood.fromJson(Map<String, dynamic> json) {
    meals = List.from(json['meals']).map((e) => Foods.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['meals'] = meals.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Foods {
  Foods({
    required this.strMeal,
    required this.strMealThumb,
    required this.idMeal,
  });
  late final String strMeal;
  late final String strMealThumb;
  late final String idMeal;

  Foods.fromJson(Map<String, dynamic> json) {
    strMeal = json['strMeal'];
    strMealThumb = json['strMealThumb'];
    idMeal = json['idMeal'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['strMeal'] = strMeal;
    _data['strMealThumb'] = strMealThumb;
    _data['idMeal'] = idMeal;
    return _data;
  }
}
