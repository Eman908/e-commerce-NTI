class ItemCardModel {
  final String image;
  final String title;
  final String priceBefor;
  final String priceAfter;
  final String? details;

  ItemCardModel(this.details,
      {required this.image,
      required this.priceAfter,
      required this.priceBefor,
      required this.title});
}
