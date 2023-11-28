// ignore_for_file: must_be_immutable

part of 'adacana_bloc.dart';

/// Represents the state of Adacana in the application.
class AdacanaState extends Equatable {
  AdacanaState({this.adacanaModelObj});

  AdacanaModel? adacanaModelObj;

  @override
  List<Object?> get props => [
        adacanaModelObj,
      ];
  AdacanaState copyWith({AdacanaModel? adacanaModelObj}) {
    return AdacanaState(
      adacanaModelObj: adacanaModelObj ?? this.adacanaModelObj,
    );
  }
}
