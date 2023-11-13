// ignore_for_file: must_be_immutable

part of 'k41_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K41 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K41Event extends Equatable {}

/// Event that is dispatched when the K41 widget is first created.
class K41InitialEvent extends K41Event {
  @override
  List<Object?> get props => [];
}
