import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/features/Favorites/Data/repo/favorites_repo.dart';
import 'package:ecommerce_app/features/Home/data/Models/all_proudcts_model/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FavoritesRepoImp implements FavoritesRepo {
  CollectionReference favorites =
      FirebaseFirestore.instance.collection(kFavorites);
  @override
  Future<Either<String, void>> addProductToFavorites(
      {required ProductModel product}) async {
    try {
      await favorites.add(product.toJson());
      return right(null);
    } on Exception catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, void>> deleteProductFromFavorites(
      {required String docId}) async {
    try {
      await favorites.doc(docId).delete();
      return right(null);
    } on Exception catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<ProductModel>>> getFavoriteProducts() async {
    List<ProductModel> favoriteProducts = [];
    try {
      var snapshot = await favorites.get();
      for (var doc in snapshot.docs) {
        var data = doc.data();
        String docId = doc.id;
        favoriteProducts.add(ProductModel.fromJson(data, docId));
      }
      return right(favoriteProducts);
    } on Exception catch (e) {
      return left(e.toString());
    }
  }
}
