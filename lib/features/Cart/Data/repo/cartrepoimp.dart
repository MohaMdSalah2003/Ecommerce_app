import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/Cart/Data/repo/cart_repo.dart';
import 'package:ecommerce_app/features/Home/data/Models/all_proudcts_model/product_model.dart';

class Cartrepoimp extends CartRepo {
  CollectionReference cart = FirebaseFirestore.instance.collection('Cart');
  @override
  Future<Either<String, void>> addToCart(
      {required ProductModel product}) async {
    try {
      await cart.add(product.toJson());
      return right(null);
    } on Exception catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, void>> deleteFromCart(String docId) async {
    try {
      await cart.doc(docId).delete();
      return right(null);
    } on Exception catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<ProductModel>>> getCartData() async {
    List<ProductModel> cartproducts = [];
    try {
      var snapshot = await cart.get();
      for (var doc in snapshot.docs) {
        var data = doc.data();
        String docId = doc.id;
        cartproducts.add(ProductModel.fromJson(data, docId));
      }
      return right(cartproducts);
    } on Exception catch (e) {
      return left(e.toString());
    }
  }
}
