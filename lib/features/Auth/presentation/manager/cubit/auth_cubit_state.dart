part of 'auth_cubit_cubit.dart';

@immutable
sealed class AuthCubitState {}

final class AuthCubitInitial extends AuthCubitState {}

final class AuthLoading extends AuthCubitState {}

final class CreatAccountSuccess extends AuthCubitState {}

final class CreatAccountFauiler extends AuthCubitState {
  final String messagEerror;

  CreatAccountFauiler({required this.messagEerror});
}

final class SignInSuccess extends AuthCubitState {}

final class SignInFauiler extends AuthCubitState {
  final String messagEerror;

  SignInFauiler({required this.messagEerror});
}

final class SignInGoogleSuccess extends AuthCubitState {}

final class SignInGoogleFauiler extends AuthCubitState {
  final String messagEerror;

  SignInGoogleFauiler({required this.messagEerror});
}

final class SignInFacebookSuccess extends AuthCubitState {}

final class SignInFacebookFauiler extends AuthCubitState {
  final String messagEerror;

  SignInFacebookFauiler({required this.messagEerror});
}

final class SignOutSuccess extends AuthCubitState {}

final class SignOutFauiler extends AuthCubitState {
  final String messagEerror;

  SignOutFauiler({required this.messagEerror});
}
