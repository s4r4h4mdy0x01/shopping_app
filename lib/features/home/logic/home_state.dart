import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/product_response_model.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.productsLoading() = ProductsLoading;
  const factory HomeState.productsSuccess(
      List<Products?>? productsList, bool hasMore) = ProductsSuccess;
  const factory HomeState.productsError(String error) = ProductsError;
}
