// ignore_for_file: must_be_immutable

part of 'language_bloc.dart';

/// Represents the state of Language in the application.
class LanguageState extends Equatable {
  LanguageState({this.languageModelObj});

  LanguageModel? languageModelObj;

  @override
  List<Object?> get props => [
        languageModelObj,
      ];
  LanguageState copyWith({LanguageModel? languageModelObj}) {
    return LanguageState(
      languageModelObj: languageModelObj ?? this.languageModelObj,
    );
  }
}
