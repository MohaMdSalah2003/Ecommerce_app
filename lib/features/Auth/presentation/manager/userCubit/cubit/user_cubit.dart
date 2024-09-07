import 'package:ecommerce_app/core/errors/failure.dart';
import 'package:ecommerce_app/features/Auth/Data/models/user_model.dart';
import 'package:ecommerce_app/features/Auth/Data/repo/user_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.userRepo) : super(UserInitial());
  final UserRepo userRepo;
  Future<void> addUser({required UserModel userModel}) async {
    emit(UserLoading());
    var result = await userRepo.addUser(userModel: userModel);
    result.fold(
      (failuer) {
        emit(AddUserFailuer(messageError: failuer.toString()));
      },
      (ok) {
        emit(AddUserSuccess());
      },
    );
  }

  Future<void> getUser({required String email}) async {
    emit(UserLoading());
    var result = await userRepo.getUser(email: email);
    result.fold((faliuer) {
      emit(GetUserFailuer(messageError: faliuer.toString()));
    }, (ok) {
      emit(GetUserSuccess());
    });
  }
}
