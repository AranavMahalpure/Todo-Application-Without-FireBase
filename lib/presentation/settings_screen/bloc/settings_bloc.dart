import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:todo_list/presentation/settings_screen/models/settings_model.dart';
part 'settings_event.dart';
part 'settings_state.dart';

/// A bloc that manages the state of a Settings according to the event that is dispatched to it.
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(SettingsState initialState) : super(initialState) {
    on<SettingsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingsInitialEvent event,
    Emitter<SettingsState> emit,
  ) async {}
}
