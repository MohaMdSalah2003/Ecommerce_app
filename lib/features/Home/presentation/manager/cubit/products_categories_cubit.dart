import 'package:ecommerce_app/features/Home/data/Models/all_proudcts_model/product_model.dart';
import 'package:ecommerce_app/features/Home/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'products_categories_state.dart';

class AllProductsCubit extends Cubit<ProductsCubitState> {
  AllProductsCubit(this.homeRepo) : super(ProductsCategoriesInitial());
  final HomeRepo homeRepo;
  void getAllProducts() async {
    emit(ProductsLoading());
    var result = await homeRepo.getAllProducts();
    result.fold((l) {
      emit(GetProductsFauiler(messagEerror: l.toString()));
    }, (r) {
      emit(GetProductsSuccess(products: r));
    });
  }
}
