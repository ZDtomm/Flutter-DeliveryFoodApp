import 'package:e_food/Utils/colors.dart';
import 'package:e_food/Utils/dimensions.dart';
import 'package:e_food/widgets/app_icon.dart';
import 'package:e_food/widgets/big_text.dart';
import 'package:e_food/widgets/expandable_text_widget.dart';
import 'package:e_food/widgets/icon_and_text.dart';
import 'package:e_food/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../widgets/app_column.dart';

class PopulerFoodDetail extends StatefulWidget {
  const PopulerFoodDetail({super.key});

  @override
  State<PopulerFoodDetail> createState() => _PopulerFoodDetailState();
}

class _PopulerFoodDetailState extends State<PopulerFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.populerFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/food1.png"),
                  ),
                ),
              )),
          //icon widget
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ],
              )),
          //Deskripsi
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.populerFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: "Nasi Goreng Special",
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: "Deskripsi"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              "Resep nasi goreng enak selalu tepat disajikan untuk makan pagi, siang, ataupun malam. Dengan topping telur, ayam suwir, udang, bakso sapi, dan bakso ikan, jadikan menu nasi goreng spesial berikut sebagai menu favorit baru untuk keluarga!.Resep nasi goreng enak selalu tepat disajikan untuk makan pagi, siang, ataupun malam. Dengan topping telur, ayam suwir, udang, bakso sapi, dan bakso ikan, jadikan menu nasi goreng spesial berikut sebagai menu favorit baru untuk keluarga!."),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: "0"),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: BigText(
                text: "25K | Add to chart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Dimensions.radius20,
                ),
                color: AppColors.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
