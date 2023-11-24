import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:todo_list/presentation/adacana_screen/models/adacana_model.dart';
part 'adacana_event.dart';
part 'adacana_state.dart';

/// A bloc that manages the state of a Adacana according to the event that is dispatched to it.
class AdacanaBloc extends Bloc<AdacanaEvent, AdacanaState> {
  AdacanaBloc(AdacanaState initialState) : super(initialState) {
    on<AdacanaInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AdacanaInitialEvent event,
    Emitter<AdacanaState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.loginOrSignupScreen,
      );
    });
  }
}
