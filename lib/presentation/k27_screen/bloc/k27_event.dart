// ignore_for_file: must_be_immutable

part of 'k27_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K27 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K27Event extends Equatable {}

/// Event that is dispatched when the K27 widget is first created.
class K27InitialEvent extends K27Event {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends K27Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
