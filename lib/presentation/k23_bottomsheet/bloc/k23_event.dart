// ignore_for_file: must_be_immutable

part of 'k23_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K23 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K23Event extends Equatable {}

/// Event that is dispatched when the K23 widget is first created.
class K23InitialEvent extends K23Event {
  @override
  List<Object?> get props => [];
}
