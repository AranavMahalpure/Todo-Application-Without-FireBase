// ignore_for_file: must_be_immutable

part of 'wish_list_bloc.dart';

/// Represents the state of WishList in the application.
class WishListState extends Equatable {
  WishListState({
    this.taskFieldController,
    this.filesizeController,
    this.wishListModelObj,
  });

  TextEditingController? taskFieldController;

  TextEditingController? filesizeController;

  WishListModel? wishListModelObj;

  @override
  List<Object?> get props => [
        taskFieldController,
        filesizeController,
        wishListModelObj,
      ];
  WishListState copyWith({
    TextEditingController? taskFieldController,
    TextEditingController? filesizeController,
    WishListModel? wishListModelObj,
  }) {
    return WishListState(
      taskFieldController: taskFieldController ?? this.taskFieldController,
      filesizeController: filesizeController ?? this.filesizeController,
      wishListModelObj: wishListModelObj ?? this.wishListModelObj,
    );
  }
}
