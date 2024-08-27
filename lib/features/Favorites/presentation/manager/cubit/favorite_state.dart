part of 'favorite_cubit.dart';

@immutable
sealed class FavoriteState {}

final class FavoriteInitial extends FavoriteState {}

final class FavoritProductsLoading extends FavoriteState {}

final class GetFavoritProductsSuccssful extends FavoriteState {
  final List<ProductModel> favoriteProductS;

  GetFavoritProductsSuccssful({required this.favoriteProductS});
}

final class GetFavoritProductsFailuer extends FavoriteState {
  final String messageerror;

  GetFavoritProductsFailuer({required this.messageerror});
}

final class AddFavoritProductsSuccssful extends FavoriteState {}

final class AddFavoritProductsFailuer extends FavoriteState {
  final String messageerror;

  AddFavoritProductsFailuer({required this.messageerror});
}

final class DeleteFavoritProductSuccssful extends FavoriteState {}

final class DeleteFavoritProductFailuer extends FavoriteState {
  final String messageerror;

  DeleteFavoritProductFailuer({required this.messageerror});
}
