part of 'products_categories_cubit.dart';

@immutable
sealed class ProductsCategoriesState {}

final class ProductsCategoriesInitial extends ProductsCategoriesState {}

final class ProductsCategoriesLoading extends ProductsCategoriesState {}

final class GetProductsSuccess extends ProductsCategoriesState {
  final List<ProductModel> products;

  GetProductsSuccess({required this.products});
}

final class GetProductsFauiler extends ProductsCategoriesState {
  final String messagEerror;

  GetProductsFauiler({required this.messagEerror});
}

final class GetCategoriesSuccess extends ProductsCategoriesState {
  final List<AllCategoriesModel> categories;

  GetCategoriesSuccess({required this.categories});
}

final class GetCategoriesFauiler extends ProductsCategoriesState {
  final String messagEerror;

  GetCategoriesFauiler({required this.messagEerror});
}
