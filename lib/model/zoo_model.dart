import 'dart:ui';

class ZooModel {
  late String animal;
  late String data;
  late bool onTrack;
  late Color lightColor;
  late Color darkColor;

  ZooModel(
      {required this.animal,
      required this.data,
      required this.onTrack,
      required this.darkColor,
      required this.lightColor});
}
