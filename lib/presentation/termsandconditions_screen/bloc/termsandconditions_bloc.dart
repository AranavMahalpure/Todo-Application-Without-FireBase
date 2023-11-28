import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:todo_list/presentation/termsandconditions_screen/models/termsandconditions_model.dart';
part 'termsandconditions_event.dart';
part 'termsandconditions_state.dart';

/// A bloc that manages the state of a Termsandconditions according to the event that is dispatched to it.
class TermsandconditionsBloc
    extends Bloc<TermsandconditionsEvent, TermsandconditionsState> {
  TermsandconditionsBloc(TermsandconditionsState initialState)
      : super(initialState) {
    on<TermsandconditionsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TermsandconditionsInitialEvent event,
    Emitter<TermsandconditionsState> emit,
  ) async {}
}
