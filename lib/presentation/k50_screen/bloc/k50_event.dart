// ignore_for_file: must_be_immutable

part of 'k50_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K50 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K50Event extends Equatable {}

/// Event that is dispatched when the K50 widget is first created.
class K50InitialEvent extends K50Event {
  @override
  List<Object?> get props => [];
}
