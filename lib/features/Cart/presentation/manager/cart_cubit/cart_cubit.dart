import 'package:ecommerce_app/features/Cart/Data/repo/cart_repo.dart';
import 'package:ecommerce_app/features/Home/data/Models/all_proudcts_model/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this.cartRepo) : super(CartInitial());
  final CartRepo cartRepo;
  Future<void> getCartProducts() async {
    emit(CartProductsLoading());
    var result = await cartRepo.getCartData();
    result.fold(
      (failuer) {
        emit(
          GetCartProductsFailuer(messageerror: failuer.toString()),
        );
      },
      (products) {
        emit(GetCartProductsSuccssful(cartProductS: products));
      },
    );
  }

  Future<void> addProductToCart({required ProductModel product}) async {
    emit(CartProductsLoading());

    var result = await cartRepo.addToCart(product: product);
    result.fold(
      (failuer) {
        emit(AddCartProductsFailuer(messageerror: failuer.toString()));
      },
      (r) {
        emit(AddCartProductsSuccssful());
      },
    );
  }

  Future<void> deleteProductFromCart({required String docId}) async {
    emit(CartProductsLoading());
    var result = await cartRepo.deleteFromCart(docId);
    result.fold(
      (failuer) {
        emit(
          DeleteCartProductFailuer(messageerror: failuer.toString()),
        );
      },
      (products) {
        emit(DeleteCartProductSuccssful());
      },
    );
  }
}
