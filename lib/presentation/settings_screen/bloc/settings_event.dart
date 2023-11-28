// ignore_for_file: must_be_immutable

part of 'settings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Settings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SettingsEvent extends Equatable {}

/// Event that is dispatched when the Settings widget is first created.
class SettingsInitialEvent extends SettingsEvent {
  @override
  List<Object?> get props => [];
}
