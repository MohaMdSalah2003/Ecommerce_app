import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/Auth/Data/models/user_model.dart';

abstract class UserRepo {
  Future<Either<String, void>> addUser({required UserModel userModel});

  Future<Either<String, UserModel>> getUser({required String email});
}
