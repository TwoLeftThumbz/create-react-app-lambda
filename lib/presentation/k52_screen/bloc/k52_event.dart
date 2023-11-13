// ignore_for_file: must_be_immutable

part of 'k52_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K52 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K52Event extends Equatable {}

/// Event that is dispatched when the K52 widget is first created.
class K52InitialEvent extends K52Event {
  @override
  List<Object?> get props => [];
}
