// ignore_for_file: must_be_immutable

part of 'wish_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WishList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WishListEvent extends Equatable {}

/// Event that is dispatched when the WishList widget is first created.
class WishListInitialEvent extends WishListEvent {
  @override
  List<Object?> get props => [];
}
