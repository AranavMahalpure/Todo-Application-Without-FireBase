// ignore_for_file: must_be_immutable

part of 'termsandconditions_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Termsandconditions widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TermsandconditionsEvent extends Equatable {}

/// Event that is dispatched when the Termsandconditions widget is first created.
class TermsandconditionsInitialEvent extends TermsandconditionsEvent {
  @override
  List<Object?> get props => [];
}
