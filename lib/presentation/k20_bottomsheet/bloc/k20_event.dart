// ignore_for_file: must_be_immutable

part of 'k20_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K20 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K20Event extends Equatable {}

/// Event that is dispatched when the K20 widget is first created.
class K20InitialEvent extends K20Event {
  @override
  List<Object?> get props => [];
}
