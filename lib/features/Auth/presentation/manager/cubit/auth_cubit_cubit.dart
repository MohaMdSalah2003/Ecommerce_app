import 'package:ecommerce_app/features/Auth/Data/repo/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_cubit_state.dart';

class AuthCubitCubit extends Cubit<AuthCubitState> {
  AuthCubitCubit(this.authRepo) : super(AuthCubitInitial());
  final AuthRepo authRepo;
  Future<void> createNewAccount(
      {required String email, required String password}) async {
    emit(AuthLoading());
    var result =
        await authRepo.createNewAccount(email: email, password: password);
    result.fold(
      (messageError) {
        emit(CreatAccountFauiler(messagEerror: messageError));
      },
      (r) {
        emit(CreatAccountSuccess());
      },
    );
  }

  Future<void> signIN({required String email, required String password}) async {
    emit(AuthLoading());
    var result = await authRepo.signIN(email: email, password: password);
    result.fold(
      (messagEerror) {
        emit(SignInFauiler(messagEerror: messagEerror));
      },
      (r) {
        emit(SignInSuccess());
      },
    );
  }

  Future<void> signOut() async {
    emit(AuthLoading());
    try {
      await authRepo.signOut();
      emit(SignOutSuccess());
    } on Exception catch (e) {
      emit(SignOutFauiler(messagEerror: e.toString()));
    }
  }

  Future<void> signInWithGoogle() async {
    emit(AuthLoading());
    var result = await authRepo.signInWithGoogle();
    result.fold(
      (messagEerror) {
        emit(SignInGoogleFauiler(messagEerror: messagEerror));
      },
      (r) {
        emit(SignInGoogleSuccess());
      },
    );
  }

  Future<void> signInWithFacebook() async {
    emit(AuthLoading());
    var result = await authRepo.signInWithFacebook();
    result.fold(
      (messagEerror) {
        emit(SignInFacebookFauiler(messagEerror: messagEerror));
      },
      (r) {
        emit(SignInFacebookSuccess());
      },
    );
  }
}
