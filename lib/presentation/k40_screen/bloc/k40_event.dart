// ignore_for_file: must_be_immutable

part of 'k40_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K40 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K40Event extends Equatable {}

/// Event that is dispatched when the K40 widget is first created.
class K40InitialEvent extends K40Event {
  @override
  List<Object?> get props => [];
}
