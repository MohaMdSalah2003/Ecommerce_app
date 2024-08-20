part of 'all_categories_cubit.dart';

@immutable
sealed class AllCategoriesState {}

final class AllCategoriesInitial extends AllCategoriesState {}

final class ProductsLoading extends AllCategoriesState {}

final class GetCategoriesSuccess extends AllCategoriesState {
  final List<AllCategoriesModel> categories;

  GetCategoriesSuccess({required this.categories});
}

final class GetCategoriesFauiler extends AllCategoriesState {
  final String messagEerror;

  GetCategoriesFauiler({required this.messagEerror});
}
