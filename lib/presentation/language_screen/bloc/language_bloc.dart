import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:todo_list/presentation/language_screen/models/language_model.dart';
part 'language_event.dart';
part 'language_state.dart';

/// A bloc that manages the state of a Language according to the event that is dispatched to it.
class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc(LanguageState initialState) : super(initialState) {
    on<LanguageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LanguageInitialEvent event,
    Emitter<LanguageState> emit,
  ) async {}
}
