// ignore_for_file: must_be_immutable

part of 'k51_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K51 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K51Event extends Equatable {}

/// Event that is dispatched when the K51 widget is first created.
class K51InitialEvent extends K51Event {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends K51Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
