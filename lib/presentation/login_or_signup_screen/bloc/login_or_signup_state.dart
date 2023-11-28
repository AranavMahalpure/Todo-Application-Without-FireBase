// ignore_for_file: must_be_immutable

part of 'login_or_signup_bloc.dart';

/// Represents the state of LoginOrSignup in the application.
class LoginOrSignupState extends Equatable {
  LoginOrSignupState({this.loginOrSignupModelObj});

  LoginOrSignupModel? loginOrSignupModelObj;

  @override
  List<Object?> get props => [
        loginOrSignupModelObj,
      ];
  LoginOrSignupState copyWith({LoginOrSignupModel? loginOrSignupModelObj}) {
    return LoginOrSignupState(
      loginOrSignupModelObj:
          loginOrSignupModelObj ?? this.loginOrSignupModelObj,
    );
  }
}
