import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<String, void>> createNewAccount(
      {required String email, required String password});
  Future<Either<String, void>> signIN(
      {required String email, required String password});
  Future<void> signOut();
  Future<Either<String, void>> signInWithGoogle();
  Future<Either<String, void>> signInWithFacebook();
}
