// ignore_for_file: must_be_immutable

part of 'language_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Language widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LanguageEvent extends Equatable {}

/// Event that is dispatched when the Language widget is first created.
class LanguageInitialEvent extends LanguageEvent {
  @override
  List<Object?> get props => [];
}
