import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/Home/data/Models/all_proudcts_model/product_model.dart';

abstract class CartRepo {
  Future<Either<String, void>> addToCart({required ProductModel product});
  Future<Either<String, void>> deleteFromCart(String docId);
  Future<Either<String, List<ProductModel>>> getCartData();
}
