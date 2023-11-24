// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [wish_list_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WishListModel extends Equatable {
  WishListModel() {}

  WishListModel copyWith() {
    return WishListModel();
  }

  @override
  List<Object?> get props => [];
}
