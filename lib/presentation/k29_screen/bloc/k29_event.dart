// ignore_for_file: must_be_immutable

part of 'k29_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K29 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K29Event extends Equatable {}

/// Event that is dispatched when the K29 widget is first created.
class K29InitialEvent extends K29Event {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends K29Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
