import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/Auth/Data/models/user_model.dart';
import 'package:ecommerce_app/features/Auth/Data/repo/user_repo.dart';

class UserRepoImp implements UserRepo {
  CollectionReference users = FirebaseFirestore.instance.collection('Users');
  @override
  Future<Either<String, void>> addUser({required UserModel userModel}) async {
    try {
      users.add(userModel.toJson());
      return right(null);
    } on Exception catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, UserModel>> getUser({required String email}) async {
    late UserModel usermodel;
    List<UserModel> userss = [];
    try {
      var snapshot = await users.get();
      for (var doc in snapshot.docs) {
        var data = doc.data();
        userss.add(UserModel.fromJson(data));
      }
      for (int i = 0; i < userss.length; i++) {
        if (email == userss[i].email) {
          usermodel = userss[i];
        }
      }

      return right(usermodel);
    } on Exception catch (e) {
      return left(e.toString());
    }
  }
}
