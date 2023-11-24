// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [work_today_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WorkTodayModel extends Equatable {
  WorkTodayModel() {}

  WorkTodayModel copyWith() {
    return WorkTodayModel();
  }

  @override
  List<Object?> get props => [];
}
