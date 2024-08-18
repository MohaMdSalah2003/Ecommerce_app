import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failure.dart';
import 'package:ecommerce_app/features/Home/data/Models/all_categories_model/all_categories_model.dart';
import 'package:ecommerce_app/features/Home/data/Models/all_proudcts_model/product_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductModel>>> getAllProducts();
  Future<Either<Failure, List<AllCategoriesModel>>> getAllCategories();
}
