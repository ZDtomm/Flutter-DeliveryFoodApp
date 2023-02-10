import 'package:e_food/controllers/populer_produk_controller.dart';
import 'package:e_food/data/api/api_client.dart';
import 'package:e_food/data/repository/populer_produk_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "http://mvs.bslmeiyu.com"));

  //repos
  Get.lazyPut(() => PopulerProdukRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopulerProdukConttroler(populerProdukRepo: Get.find()));
}
