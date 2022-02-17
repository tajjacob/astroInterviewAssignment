class BeverageDetail {
  BeverageDetail({
    required this.drinks,
  });
  late final List<Details> drinks;

  BeverageDetail.fromJson(Map<String, dynamic> json) {
    drinks = List.from(json['drinks']).map((e) => Details.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['drinks'] = drinks.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Details {
  Details({
    required this.idDrink,
    required this.strDrink,
    // this.strDrinkAlternate,
    // this.strTags,
    // this.strVideo,
    required this.strCategory,
    // this.strIBA,
    required this.strAlcoholic,
    required this.strGlass,
    required this.strInstructions,
    // this.strInstructionsES,
    // required this.strInstructionsDE,
    // this.strInstructionsFR,
    // required this.strInstructionsIT,
    required this.strDrinkThumb,
    required this.strIngredient1,
    required this.strIngredient2,
    // required this.strIngredient3,
    // this.strIngredient4,
    // this.strIngredient5,
    // this.strIngredient6,
    // this.strIngredient7,
    // this.strIngredient8,
    // this.strIngredient9,
    // this.strIngredient10,
    // this.strIngredient11,
    // this.strIngredient12,
    // this.strIngredient13,
    // this.strIngredient14,
    // this.strIngredient15,
    required this.strMeasure1,
    required this.strMeasure2,
    // required this.strMeasure3,
    // this.strMeasure4,
    // this.strMeasure5,
    // this.strMeasure6,
    // this.strMeasure7,
    // this.strMeasure8,
    // this.strMeasure9,
    // this.strMeasure10,
    // this.strMeasure11,
    // this.strMeasure12,
    // this.strMeasure13,
    // this.strMeasure14,
    // this.strMeasure15,
    // this.strImageSource,
    // this.strImageAttribution,
    required this.strCreativeCommonsConfirmed,
    // required this.dateModified,
  });
  late final String idDrink;
  late final String strDrink;
  // late final Null strDrinkAlternate;
  // late final Null strTags;
  // late final Null strVideo;
  late final String strCategory;
  // late final Null strIBA;
  late final String strAlcoholic;
  late final String strGlass;
  late final String strInstructions;
  // late final Null strInstructionsES;
  // late final String strInstructionsDE;
  // late final Null strInstructionsFR;
  // late final String strInstructionsIT;

  late final String strDrinkThumb;
  late final String strIngredient1;
  late final String strIngredient2;
  late final String strIngredient3;
  // late final Null strIngredient4;
  // late final Null strIngredient5;
  // late final Null strIngredient6;
  // late final Null strIngredient7;
  // late final Null strIngredient8;
  // late final Null strIngredient9;
  // late final Null strIngredient10;
  // late final Null strIngredient11;
  // late final Null strIngredient12;
  // late final Null strIngredient13;
  // late final Null strIngredient14;
  // late final Null strIngredient15;
  late final String strMeasure1;
  late final String strMeasure2;
  // late final String strMeasure3;
  // late final Null strMeasure4;
  // late final Null strMeasure5;
  // late final Null strMeasure6;
  // late final Null strMeasure7;
  // late final Null strMeasure8;
  // late final Null strMeasure9;
  // late final Null strMeasure10;
  // late final Null strMeasure11;
  // late final Null strMeasure12;
  // late final Null strMeasure13;
  // late final Null strMeasure14;
  // late final Null strMeasure15;
  // late final Null strImageSource;
  // late final Null strImageAttribution;
  late final String strCreativeCommonsConfirmed;
  // late final String dateModified;

  Details.fromJson(Map<String, dynamic> json) {
    idDrink = json['idDrink'];
    strDrink = json['strDrink'];
    // strDrinkAlternate = json['strDrinkAlternate'];
    // strTags = json['strTags'];
    // strVideo = json['strVideo'];
    strCategory = json['strCategory'];
    // strIBA = json['strIBA'];
    strAlcoholic = json['strAlcoholic'];
    strGlass = json['strGlass'];
    strInstructions = json['strInstructions'];
    // strInstructionsES = json['strInstructionsES'];
    // strInstructionsDE = json['strInstructionsDE'];
    // strInstructionsFR = json['strInstructionsFR'];
    // strInstructionsIT = json['strInstructionsIT'];
    strDrinkThumb = json['strDrinkThumb'];
    strIngredient1 = json['strIngredient1'];
    strIngredient2 = json['strIngredient2'];
    // strIngredient3 = json['strIngredient3'];
    // strIngredient4 = json['strIngredient4'];
    // strIngredient5 = json['strIngredient5'];
    // strIngredient6 = json['strIngredient6'];
    // strIngredient7 = json['strIngredient7'];
    // strIngredient8 = json['strIngredient8'];
    // strIngredient9 = json['strIngredient9'];
    // strIngredient10 = json['strIngredient10'];
    // strIngredient11 = json['strIngredient11'];
    // strIngredient12 = json['strIngredient12'];
    // strIngredient13 = json['strIngredient13'];
    // strIngredient14 = json['strIngredient14'];
    // strIngredient15 = json['strIngredient15'];
    strMeasure1 = json['strMeasure1'];
    strMeasure2 = json['strMeasure2'];
    // strMeasure3 = json['strMeasure3'];
    // strMeasure4 = json['strMeasure4'];
    // strMeasure5 = json['strMeasure5'];
    // strMeasure6 = json['strMeasure6'];
    // strMeasure7 = json['strMeasure7'];
    // strMeasure8 = json['strMeasure8'];
    // strMeasure9 = json['strMeasure9'];
    // strMeasure10 = json['strMeasure10'];
    // strMeasure11 = json['strMeasure11'];
    // strMeasure12 = json['strMeasure12'];
    // strMeasure13 = json['strMeasure13'];
    // strMeasure14 = json['strMeasure14'];
    // strMeasure15 = json['strMeasure15'];
    // strImageSource = json['strImageSource'];
    // strImageAttribution = json['strImageAttribution'];
    strCreativeCommonsConfirmed = json['strCreativeCommonsConfirmed'];
    // dateModified = json['dateModified'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['idDrink'] = idDrink;
    _data['strDrink'] = strDrink;
    // _data['strDrinkAlternate'] = strDrinkAlternate;
    // _data['strTags'] = strTags;
    // _data['strVideo'] = strVideo;
    _data['strCategory'] = strCategory;
    // _data['strIBA'] = strIBA;
    _data['strAlcoholic'] = strAlcoholic;
    _data['strGlass'] = strGlass;
    _data['strInstructions'] = strInstructions;
    // _data['strInstructionsES'] = strInstructionsES;
    // _data['strInstructionsDE'] = strInstructionsDE;
    // _data['strInstructionsFR'] = strInstructionsFR;
    // _data['strInstructionsIT'] = strInstructionsIT;
    _data['strDrinkThumb'] = strDrinkThumb;
    _data['strIngredient1'] = strIngredient1;
    _data['strIngredient2'] = strIngredient2;
    // _data['strIngredient3'] = strIngredient3;
    // _data['strIngredient4'] = strIngredient4;
    // _data['strIngredient5'] = strIngredient5;
    // _data['strIngredient6'] = strIngredient6;
    // _data['strIngredient7'] = strIngredient7;
    // _data['strIngredient8'] = strIngredient8;
    // _data['strIngredient9'] = strIngredient9;
    // _data['strIngredient10'] = strIngredient10;
    // _data['strIngredient11'] = strIngredient11;
    // _data['strIngredient12'] = strIngredient12;
    // _data['strIngredient13'] = strIngredient13;
    // _data['strIngredient14'] = strIngredient14;
    // _data['strIngredient15'] = strIngredient15;
    _data['strMeasure1'] = strMeasure1;
    _data['strMeasure2'] = strMeasure2;
    // _data['strMeasure3'] = strMeasure3;
    // _data['strMeasure4'] = strMeasure4;
    // _data['strMeasure5'] = strMeasure5;
    // _data['strMeasure6'] = strMeasure6;
    // _data['strMeasure7'] = strMeasure7;
    // _data['strMeasure8'] = strMeasure8;
    // _data['strMeasure9'] = strMeasure9;
    // _data['strMeasure10'] = strMeasure10;
    // _data['strMeasure11'] = strMeasure11;
    // _data['strMeasure12'] = strMeasure12;
    // _data['strMeasure13'] = strMeasure13;
    // _data['strMeasure14'] = strMeasure14;
    // _data['strMeasure15'] = strMeasure15;
    // _data['strImageSource'] = strImageSource;
    // _data['strImageAttribution'] = strImageAttribution;
    _data['strCreativeCommonsConfirmed'] = strCreativeCommonsConfirmed;
    // _data['dateModified'] = dateModified;
    return _data;
  }
}
