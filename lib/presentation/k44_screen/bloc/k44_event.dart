// ignore_for_file: must_be_immutable

part of 'k44_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K44 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K44Event extends Equatable {}

/// Event that is dispatched when the K44 widget is first created.
class K44InitialEvent extends K44Event {
  @override
  List<Object?> get props => [];
}
