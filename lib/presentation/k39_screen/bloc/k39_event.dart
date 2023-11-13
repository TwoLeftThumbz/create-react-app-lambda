// ignore_for_file: must_be_immutable

part of 'k39_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K39 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K39Event extends Equatable {}

/// Event that is dispatched when the K39 widget is first created.
class K39InitialEvent extends K39Event {
  @override
  List<Object?> get props => [];
}
