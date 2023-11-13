// ignore_for_file: must_be_immutable

part of 'k13_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K13 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K13Event extends Equatable {}

/// Event that is dispatched when the K13 widget is first created.
class K13InitialEvent extends K13Event {
  @override
  List<Object?> get props => [];
}
