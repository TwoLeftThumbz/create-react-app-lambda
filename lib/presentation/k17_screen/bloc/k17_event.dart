// ignore_for_file: must_be_immutable

part of 'k17_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K17 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K17Event extends Equatable {}

/// Event that is dispatched when the K17 widget is first created.
class K17InitialEvent extends K17Event {
  @override
  List<Object?> get props => [];
}
