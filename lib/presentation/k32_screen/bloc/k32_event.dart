// ignore_for_file: must_be_immutable

part of 'k32_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K32 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K32Event extends Equatable {}

/// Event that is dispatched when the K32 widget is first created.
class K32InitialEvent extends K32Event {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends K32Event {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
