import 'package:shopping_app/core/network/api_result.dart';
import 'package:shopping_app/core/network/api_service.dart';
import 'package:shopping_app/features/home/data/models/product_response_model.dart';

class HomeRepo {
  final ApiService _apiService;
  HomeRepo(this._apiService);

  Future<ApiResult<ProductResponseModel>> getProducts(
      int skip, int limit) async {
    try {
      final response = await _apiService.getProducts(skip, limit);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
