// ignore_for_file: must_be_immutable

part of 'k46_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K46 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K46Event extends Equatable {}

/// Event that is dispatched when the K46 widget is first created.
class K46InitialEvent extends K46Event {
  @override
  List<Object?> get props => [];
}
