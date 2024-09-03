import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';
import 'package:shopping_app/core/network/api_constants.dart';

import '../../features/home/data/models/product_response_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiContants.baseUsrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @GET(ApiContants.home)
  Future<ProductResponseModel> getProducts(
    @Query("skip") int skip,
    @Query("limit") int limit,
  );
}
