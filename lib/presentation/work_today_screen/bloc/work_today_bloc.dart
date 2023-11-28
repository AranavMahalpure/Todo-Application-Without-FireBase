import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:todo_list/presentation/work_today_screen/models/work_today_model.dart';
part 'work_today_event.dart';
part 'work_today_state.dart';

/// A bloc that manages the state of a WorkToday according to the event that is dispatched to it.
class WorkTodayBloc extends Bloc<WorkTodayEvent, WorkTodayState> {
  WorkTodayBloc(WorkTodayState initialState) : super(initialState) {
    on<WorkTodayInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WorkTodayInitialEvent event,
    Emitter<WorkTodayState> emit,
  ) async {}
}
