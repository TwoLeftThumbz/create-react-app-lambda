// ignore_for_file: must_be_immutable

part of 'k59_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K59 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K59Event extends Equatable {}

/// Event that is dispatched when the K59 widget is first created.
class K59InitialEvent extends K59Event {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends K59Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
