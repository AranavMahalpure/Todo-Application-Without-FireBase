// ignore_for_file: must_be_immutable

part of 'work_today_bloc.dart';

/// Represents the state of WorkToday in the application.
class WorkTodayState extends Equatable {
  WorkTodayState({this.workTodayModelObj});

  WorkTodayModel? workTodayModelObj;

  @override
  List<Object?> get props => [
        workTodayModelObj,
      ];
  WorkTodayState copyWith({WorkTodayModel? workTodayModelObj}) {
    return WorkTodayState(
      workTodayModelObj: workTodayModelObj ?? this.workTodayModelObj,
    );
  }
}
