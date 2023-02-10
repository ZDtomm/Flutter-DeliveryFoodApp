import 'package:e_food/data/repository/populer_produk_repo.dart';
import 'package:e_food/models/Produk_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopulerProdukConttroler extends GetxController {
  final PopulerProdukRepo populerProdukRepo;
  PopulerProdukConttroler({required this.populerProdukRepo});
  List<dynamic> _populerProdukList = [];
  List<dynamic> get PopulerProdukList => _populerProdukList;

  Future<void> getPopulerProdukList() async {
    Response response = await populerProdukRepo.getPopulerProdukList();
    if (response.statusCode == 200) {
      print("got produk");
      _populerProdukList = [];
      _populerProdukList.addAll(product.fromJson(response.body).products);
      print(_populerProdukList);
      update();
    } else {}
  }
}
