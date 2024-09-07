part of 'user_cubit.dart';

@immutable
sealed class UserState {}

final class UserInitial extends UserState {}

final class UserLoading extends UserState {}

final class AddUserSuccess extends UserState {}

final class AddUserFailuer extends UserState {
  final String messageError;

  AddUserFailuer({required this.messageError});
}

final class GetUserSuccess extends UserState {}

final class GetUserFailuer extends UserState {
  final String messageError;

  GetUserFailuer({required this.messageError});
}
