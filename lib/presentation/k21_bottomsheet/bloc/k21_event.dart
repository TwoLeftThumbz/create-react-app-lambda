// ignore_for_file: must_be_immutable

part of 'k21_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K21 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K21Event extends Equatable {}

/// Event that is dispatched when the K21 widget is first created.
class K21InitialEvent extends K21Event {
  @override
  List<Object?> get props => [];
}
