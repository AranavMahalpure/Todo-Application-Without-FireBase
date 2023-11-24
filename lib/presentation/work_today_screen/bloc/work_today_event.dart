// ignore_for_file: must_be_immutable

part of 'work_today_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WorkToday widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WorkTodayEvent extends Equatable {}

/// Event that is dispatched when the WorkToday widget is first created.
class WorkTodayInitialEvent extends WorkTodayEvent {
  @override
  List<Object?> get props => [];
}
