// ignore_for_file: must_be_immutable

part of 'k37_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K37 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K37Event extends Equatable {}

/// Event that is dispatched when the K37 widget is first created.
class K37InitialEvent extends K37Event {
  @override
  List<Object?> get props => [];
}
