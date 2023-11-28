// ignore_for_file: must_be_immutable

part of 'personality_bloc.dart';

/// Represents the state of Personality in the application.
class PersonalityState extends Equatable {
  PersonalityState({
    this.userNameController,
    this.firstNameController,
    this.lastNameController,
    this.hobbyController,
    this.dateOfBirthController,
    this.countryController,
    this.personalityModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? hobbyController;

  TextEditingController? dateOfBirthController;

  TextEditingController? countryController;

  PersonalityModel? personalityModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        firstNameController,
        lastNameController,
        hobbyController,
        dateOfBirthController,
        countryController,
        personalityModelObj,
      ];
  PersonalityState copyWith({
    TextEditingController? userNameController,
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? hobbyController,
    TextEditingController? dateOfBirthController,
    TextEditingController? countryController,
    PersonalityModel? personalityModelObj,
  }) {
    return PersonalityState(
      userNameController: userNameController ?? this.userNameController,
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      hobbyController: hobbyController ?? this.hobbyController,
      dateOfBirthController:
          dateOfBirthController ?? this.dateOfBirthController,
      countryController: countryController ?? this.countryController,
      personalityModelObj: personalityModelObj ?? this.personalityModelObj,
    );
  }
}
