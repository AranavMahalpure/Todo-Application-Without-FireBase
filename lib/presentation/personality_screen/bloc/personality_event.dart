// ignore_for_file: must_be_immutable

part of 'personality_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Personality widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PersonalityEvent extends Equatable {}

/// Event that is dispatched when the Personality widget is first created.
class PersonalityInitialEvent extends PersonalityEvent {
  @override
  List<Object?> get props => [];
}
