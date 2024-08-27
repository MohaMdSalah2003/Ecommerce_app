import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/Home/data/Models/all_proudcts_model/product_model.dart';

abstract class FavoritesRepo {
  Future<Either<String, List<ProductModel>>> getFavoriteProducts();
  Future<Either<String, void>> addProductToFavorites(
      {required ProductModel product});
  Future<Either<String, void>> deleteProductFromFavorites({
    required String docId,
  });
}
