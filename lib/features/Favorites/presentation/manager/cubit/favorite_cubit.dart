import 'package:ecommerce_app/features/Favorites/Data/repo/favorites_repo.dart';
import 'package:ecommerce_app/features/Home/data/Models/all_proudcts_model/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit(this.favoritesRepo) : super(FavoriteInitial());
  final FavoritesRepo favoritesRepo;
  Future<void> getFavoriteProducts() async {
    emit(FavoritProductsLoading());
    var result = await favoritesRepo.getFavoriteProducts();
    result.fold(
      (failuer) {
        emit(
          GetFavoritProductsFailuer(messageerror: failuer.toString()),
        );
      },
      (products) {
        emit(GetFavoritProductsSuccssful(favoriteProductS: products));
      },
    );
  }

  Future<void> addProductToFavorites({required ProductModel product}) async {
    emit(FavoritProductsLoading());

    var result = await favoritesRepo.addProductToFavorites(product: product);
    result.fold(
      (failuer) {
        emit(AddFavoritProductsFailuer(messageerror: failuer.toString()));
      },
      (r) {
        emit(AddFavoritProductsSuccssful());
      },
    );
  }

  Future<void> deleteProductFromFavorites({required String docId}) async {
    emit(FavoritProductsLoading());

    var result = await favoritesRepo.deleteProductFromFavorites(docId: docId);
    result.fold(
      (failuer) {
        emit(
          DeleteFavoritProductFailuer(messageerror: failuer.toString()),
        );
      },
      (products) {
        emit(DeleteFavoritProductSuccssful());
      },
    );
  }
}
