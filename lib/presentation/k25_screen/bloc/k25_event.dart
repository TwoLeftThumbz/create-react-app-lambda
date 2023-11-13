// ignore_for_file: must_be_immutable

part of 'k25_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K25 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K25Event extends Equatable {}

/// Event that is dispatched when the K25 widget is first created.
class K25InitialEvent extends K25Event {
  @override
  List<Object?> get props => [];
}
