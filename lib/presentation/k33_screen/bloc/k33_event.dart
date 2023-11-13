// ignore_for_file: must_be_immutable

part of 'k33_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K33 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K33Event extends Equatable {}

/// Event that is dispatched when the K33 widget is first created.
class K33InitialEvent extends K33Event {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends K33Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
