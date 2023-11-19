part of 'user_bloc.dart';

@immutable
abstract class UserState {

  final bool existUser;
  final Usuario user;

  UserState({
    this.existUser = false,
    this.user
  });

}

class UserInitialState extends UserState {
  UserInitialState() : super(existUser: false, user: null);
}

class UserSetState extends UserState {
  final Usuario newUser;
  UserSetState(this.newUser)
      : super(user: newUser, existUser: true);
}

