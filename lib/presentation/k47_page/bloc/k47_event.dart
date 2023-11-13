// ignore_for_file: must_be_immutable

part of 'k47_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K47 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K47Event extends Equatable {}

/// Event that is dispatched when the K47 widget is first created.
class K47InitialEvent extends K47Event {
  @override
  List<Object?> get props => [];
}
