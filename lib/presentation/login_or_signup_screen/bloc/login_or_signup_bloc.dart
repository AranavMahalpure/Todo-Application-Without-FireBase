import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:todo_list/presentation/login_or_signup_screen/models/login_or_signup_model.dart';
part 'login_or_signup_event.dart';
part 'login_or_signup_state.dart';

/// A bloc that manages the state of a LoginOrSignup according to the event that is dispatched to it.
class LoginOrSignupBloc extends Bloc<LoginOrSignupEvent, LoginOrSignupState> {
  LoginOrSignupBloc(LoginOrSignupState initialState) : super(initialState) {
    on<LoginOrSignupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginOrSignupInitialEvent event,
    Emitter<LoginOrSignupState> emit,
  ) async {}
}
