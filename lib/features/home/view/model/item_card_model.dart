class ItemCardModel {
  final String image;
  final String title;
  final String priceBefor;
  final String priceAfter;

  ItemCardModel(
      {required this.image,
      required this.priceAfter,
      required this.priceBefor,
      required this.title});
}
