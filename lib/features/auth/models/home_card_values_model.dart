class HomeCardValuesModel {
  final String titleLeft;
  final String subTitleLeft;
  final String? titleRight;
  final String subTitleRight;
  final bool titleRightHeighlight;
  final bool titleRightRedColor;

  HomeCardValuesModel({
    required this.titleLeft,
    required this.subTitleLeft,
    this.titleRight,
    required this.subTitleRight,
    this.titleRightHeighlight = false,
    this.titleRightRedColor = false,
  });
}
