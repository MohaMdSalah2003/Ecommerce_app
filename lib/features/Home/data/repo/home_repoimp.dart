import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/errors/failure.dart';
import 'package:ecommerce_app/core/utils/api_service.dart';
import 'package:ecommerce_app/features/Home/data/Models/all_categories_model/all_categories_model.dart';
import 'package:ecommerce_app/features/Home/data/Models/all_proudcts_model/product_model.dart';
import 'package:ecommerce_app/features/Home/data/repo/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  ApiService apiService = ApiService();
  @override
  Future<Either<Failure, List<AllCategoriesModel>>> getAllCategories() async {
    try {
      var data = await apiService.get(endpoint: 'categories');
      List<AllCategoriesModel> categories = [];
      for (var item in data["data"]["data"]) {
        categories.add(AllCategoriesModel.fromJson(item));
      }
      return right(categories);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioerror(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getAllProducts() async {
    try {
      var data = await apiService.get(endpoint: 'products');
      List<ProductModel> products = [];
      for (var item in data["data"]["data"]) {
        products.add(ProductModel.fromJson(item));
      }
      return right(products);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioerror(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}
