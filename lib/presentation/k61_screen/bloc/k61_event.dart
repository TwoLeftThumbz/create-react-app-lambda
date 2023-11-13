// ignore_for_file: must_be_immutable

part of 'k61_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K61 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K61Event extends Equatable {}

/// Event that is dispatched when the K61 widget is first created.
class K61InitialEvent extends K61Event {
  @override
  List<Object?> get props => [];
}
