// ignore_for_file: must_be_immutable

part of 'login_or_signup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginOrSignup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginOrSignupEvent extends Equatable {}

/// Event that is dispatched when the LoginOrSignup widget is first created.
class LoginOrSignupInitialEvent extends LoginOrSignupEvent {
  @override
  List<Object?> get props => [];
}
