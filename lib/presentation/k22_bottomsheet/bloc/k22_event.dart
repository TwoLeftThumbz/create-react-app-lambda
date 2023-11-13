// ignore_for_file: must_be_immutable

part of 'k22_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K22 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K22Event extends Equatable {}

/// Event that is dispatched when the K22 widget is first created.
class K22InitialEvent extends K22Event {
  @override
  List<Object?> get props => [];
}
