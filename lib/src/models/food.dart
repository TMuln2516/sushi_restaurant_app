class Food {
  final String name;
  final String price;
  final String imagePath;
  final String rate;
  final String description;

  Food(
      {required this.name,
      required this.price,
      required this.imagePath,
      required this.rate,
      required this.description});

  String get _getName => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _rate => rate;
  String get _description => description;
}
