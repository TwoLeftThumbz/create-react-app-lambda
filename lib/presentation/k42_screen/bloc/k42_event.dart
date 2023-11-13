// ignore_for_file: must_be_immutable

part of 'k42_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K42 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K42Event extends Equatable {}

/// Event that is dispatched when the K42 widget is first created.
class K42InitialEvent extends K42Event {
  @override
  List<Object?> get props => [];
}
