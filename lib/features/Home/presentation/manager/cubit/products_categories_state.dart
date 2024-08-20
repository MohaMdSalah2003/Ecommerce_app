part of 'products_categories_cubit.dart';

@immutable
sealed class ProductsCubitState {}

final class ProductsCategoriesInitial extends ProductsCubitState {}

final class ProductsLoading extends ProductsCubitState {}

final class GetProductsSuccess extends ProductsCubitState {
  final List<ProductModel> products;

  GetProductsSuccess({required this.products});
}

final class GetProductsFauiler extends ProductsCubitState {
  final String messagEerror;

  GetProductsFauiler({required this.messagEerror});
}
