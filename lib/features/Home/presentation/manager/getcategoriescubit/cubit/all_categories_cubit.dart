import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/Home/data/Models/all_categories_model/all_categories_model.dart';
import 'package:ecommerce_app/features/Home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

part 'all_categories_state.dart';

class AllCategoriesCubit extends Cubit<AllCategoriesState> {
  AllCategoriesCubit(this.homeRepo) : super(AllCategoriesInitial());
  final HomeRepo homeRepo;
  void getAllCategories() async {
    emit(ProductsLoading());
    var result = await homeRepo.getAllCategories();
    result.fold((l) {
      emit(GetCategoriesFauiler(messagEerror: l.toString()));
    }, (r) {
      emit(GetCategoriesSuccess(categories: r));
    });
  }
}
