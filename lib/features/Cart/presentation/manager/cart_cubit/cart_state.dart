part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}

final class CartProductsLoading extends CartState {}

final class GetCartProductsSuccssful extends CartState {
  final List<ProductModel> cartProductS;

  GetCartProductsSuccssful({required this.cartProductS});
}

final class GetCartProductsFailuer extends CartState {
  final String messageerror;

  GetCartProductsFailuer({required this.messageerror});
}

final class AddCartProductsSuccssful extends CartState {}

final class AddCartProductsFailuer extends CartState {
  final String messageerror;

  AddCartProductsFailuer({required this.messageerror});
}

final class DeleteCartProductSuccssful extends CartState {}

final class DeleteCartProductFailuer extends CartState {
  final String messageerror;

  DeleteCartProductFailuer({required this.messageerror});
}
