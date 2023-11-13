// ignore_for_file: must_be_immutable

part of 'k43_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K43 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K43Event extends Equatable {}

/// Event that is dispatched when the K43 widget is first created.
class K43InitialEvent extends K43Event {
  @override
  List<Object?> get props => [];
}
