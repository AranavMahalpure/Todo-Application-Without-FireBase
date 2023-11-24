// ignore_for_file: must_be_immutable

part of 'settings_bloc.dart';

/// Represents the state of Settings in the application.
class SettingsState extends Equatable {
  SettingsState({this.settingsModelObj});

  SettingsModel? settingsModelObj;

  @override
  List<Object?> get props => [
        settingsModelObj,
      ];
  SettingsState copyWith({SettingsModel? settingsModelObj}) {
    return SettingsState(
      settingsModelObj: settingsModelObj ?? this.settingsModelObj,
    );
  }
}
