import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/Auth/Data/repo/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class AuthRepoImp implements AuthRepo {
  @override
  Future<Either<String, void>> createNewAccount(
      {required String email, required String password}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(null);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return left('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        return left('The account already exists for that email.');
      } else {
        return left(e.toString());
      }
    }
  }

  @override
  Future<Either<String, void>> signIN(
      {required String email, required String password}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return right(null);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        return left('Wrong password provided for that user.');
      } else if (e.code == "invalid-credential") {
        return const Left('Incorrect password or email.');
      } else {
        return left(e.toString());
      }
    }
  }

  @override
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Future<Either<String, void>> signInWithGoogle() async {
    try {
      Future<UserCredential> signInWithGoogle() async {
        // Trigger the authentication flow
        final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

        // Obtain the auth details from the request
        final GoogleSignInAuthentication? googleAuth =
            await googleUser?.authentication;

        // Create a new credential
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );

        // Once signed in, return the UserCredential
        return await FirebaseAuth.instance.signInWithCredential(credential);
      }

      return right(null);
    } on Exception catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, void>> signInWithFacebook() async {
    try {
      Future<UserCredential> signInWithFacebook() async {
        // Trigger the sign-in flow
        final LoginResult loginResult = await FacebookAuth.instance.login();

        // Create a credential from the access token
        final OAuthCredential facebookAuthCredential =
            FacebookAuthProvider.credential('loginResult.accessToken.token');

        // Once signed in, return the UserCredential
        return FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential);
      }

      return right(null);
    } on Exception catch (e) {
      return left(e.toString());
    }
  }
}
