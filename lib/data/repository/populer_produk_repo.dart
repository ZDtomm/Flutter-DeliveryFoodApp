import 'package:e_food/data/api/api_client.dart';
import 'package:get/get.dart';

class PopulerProdukRepo extends GetxService {
  final ApiClient apiClient;
  PopulerProdukRepo({required this.apiClient});

  Future<Response> getPopulerProdukList() async {
    return await apiClient.getData("/api/v1/products/popular");
  }
}
