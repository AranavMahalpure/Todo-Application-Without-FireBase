// ignore_for_file: must_be_immutable

part of 'adacana_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Adacana widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AdacanaEvent extends Equatable {}

/// Event that is dispatched when the Adacana widget is first created.
class AdacanaInitialEvent extends AdacanaEvent {
  @override
  List<Object?> get props => [];
}
