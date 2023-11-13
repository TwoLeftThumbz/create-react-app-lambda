// ignore_for_file: must_be_immutable

part of 'k30_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K30 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K30Event extends Equatable {}

/// Event that is dispatched when the K30 widget is first created.
class K30InitialEvent extends K30Event {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends K30Event {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDownEvent extends K30Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
