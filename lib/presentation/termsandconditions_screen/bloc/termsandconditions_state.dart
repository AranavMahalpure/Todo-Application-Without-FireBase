// ignore_for_file: must_be_immutable

part of 'termsandconditions_bloc.dart';

/// Represents the state of Termsandconditions in the application.
class TermsandconditionsState extends Equatable {
  TermsandconditionsState({this.termsandconditionsModelObj});

  TermsandconditionsModel? termsandconditionsModelObj;

  @override
  List<Object?> get props => [
        termsandconditionsModelObj,
      ];
  TermsandconditionsState copyWith(
      {TermsandconditionsModel? termsandconditionsModelObj}) {
    return TermsandconditionsState(
      termsandconditionsModelObj:
          termsandconditionsModelObj ?? this.termsandconditionsModelObj,
    );
  }
}
