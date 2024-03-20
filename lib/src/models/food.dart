class Food {
  final String name;
  final String price;
  final String imagePath;
  final String rate;

  Food(
      {required this.name,
      required this.price,
      required this.imagePath,
      required this.rate});

  String get _getName => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _rate => rate;
}
