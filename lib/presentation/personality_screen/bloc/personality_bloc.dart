import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:todo_list/presentation/personality_screen/models/personality_model.dart';
part 'personality_event.dart';
part 'personality_state.dart';

/// A bloc that manages the state of a Personality according to the event that is dispatched to it.
class PersonalityBloc extends Bloc<PersonalityEvent, PersonalityState> {
  PersonalityBloc(PersonalityState initialState) : super(initialState) {
    on<PersonalityInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PersonalityInitialEvent event,
    Emitter<PersonalityState> emit,
  ) async {
    emit(state.copyWith(
        userNameController: TextEditingController(),
        firstNameController: TextEditingController(),
        lastNameController: TextEditingController(),
        hobbyController: TextEditingController(),
        dateOfBirthController: TextEditingController(),
        countryController: TextEditingController()));
  }
}
