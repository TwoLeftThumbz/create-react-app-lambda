// ignore_for_file: must_be_immutable

part of 'k26_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K26 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K26Event extends Equatable {}

/// Event that is dispatched when the K26 widget is first created.
class K26InitialEvent extends K26Event {
  @override
  List<Object?> get props => [];
}
