// ignore_for_file: must_be_immutable

part of 'k15_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K15 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K15Event extends Equatable {}

/// Event that is dispatched when the K15 widget is first created.
class K15InitialEvent extends K15Event {
  @override
  List<Object?> get props => [];
}
