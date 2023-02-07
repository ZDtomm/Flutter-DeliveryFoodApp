import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.6;
  static double pageViewContainer = screenHeight / 3.78;
  static double pageViewTextContainer = screenHeight / 7;
  //height padding and margin dynamic
  static double height10 = screenHeight / 83;
  static double height15 = screenHeight / 55.4;
  static double height20 = screenHeight / 41.5;
  static double height30 = screenHeight / 27.7;
  static double height45 = screenHeight / 18.5;
  //widht padding and margin dynamic
  static double width10 = screenHeight / 83;
  static double width15 = screenHeight / 55.4;
  static double width20 = screenHeight / 41.5;
  static double widht30 = screenHeight / 27.7;

  static double font20 = screenHeight / 41.5;
  static double font24 = screenHeight / 36.67;
  static double font26 = screenHeight / 31.92;

  static double radius15 = screenHeight / 55.4;
  static double radius20 = screenHeight / 41.5;
  static double radius30 = screenHeight / 27.7;

  //icon size
  static double iconSize24 = screenHeight / 34.59;
  static double iconSize15 = screenHeight / 55.34;
  static double iconSize16 = screenHeight / 51.8;
  static double iconSize14 = screenHeight / 59.2;

//list view
  static double listViewImgSize = screenWidth / 3.28;
  static double listViewTextContSize = screenWidth / 3.93;

//popuiler view
  static double populerFoodImgSize = screenHeight / 2.37;

//bottom heigt
  static double bottomHeightBar = screenHeight / 6.48;
}
