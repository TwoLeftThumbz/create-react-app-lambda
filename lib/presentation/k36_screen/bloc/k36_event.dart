// ignore_for_file: must_be_immutable

part of 'k36_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K36 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K36Event extends Equatable {}

/// Event that is dispatched when the K36 widget is first created.
class K36InitialEvent extends K36Event {
  @override
  List<Object?> get props => [];
}
