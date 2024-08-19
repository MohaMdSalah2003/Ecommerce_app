import 'package:ecommerce_app/features/Home/data/Models/all_categories_model/all_categories_model.dart';
import 'package:ecommerce_app/features/Home/data/Models/all_proudcts_model/product_model.dart';
import 'package:ecommerce_app/features/Home/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'products_categories_state.dart';

class ProductsCategoriesCubit extends Cubit<ProductsCategoriesState> {
  ProductsCategoriesCubit(this.homeRepo) : super(ProductsCategoriesInitial());
  final HomeRepo homeRepo;
  void getAllProducts() async {
    emit(ProductsCategoriesLoading());
    var result = await homeRepo.getAllProducts();
    result.fold((l) {
      emit(GetProductsFauiler(messagEerror: l.toString()));
    }, (r) {
      emit(GetProductsSuccess(products: r));
    });
  }

  void getAllCategories() async {
    emit(ProductsCategoriesLoading());
    var result = await homeRepo.getAllCategories();
    result.fold((l) {
      emit(GetCategoriesFauiler(messagEerror: l.toString()));
    }, (r) {
      emit(GetCategoriesSuccess(categories: r));
    });
  }
}
