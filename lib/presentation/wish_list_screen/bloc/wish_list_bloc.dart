import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:todo_list/presentation/wish_list_screen/models/wish_list_model.dart';
part 'wish_list_event.dart';
part 'wish_list_state.dart';

/// A bloc that manages the state of a WishList according to the event that is dispatched to it.
class WishListBloc extends Bloc<WishListEvent, WishListState> {
  WishListBloc(WishListState initialState) : super(initialState) {
    on<WishListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WishListInitialEvent event,
    Emitter<WishListState> emit,
  ) async {
    emit(state.copyWith(
        taskFieldController: TextEditingController(),
        filesizeController: TextEditingController()));
  }
}
