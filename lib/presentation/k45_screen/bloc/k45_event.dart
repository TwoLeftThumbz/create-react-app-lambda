// ignore_for_file: must_be_immutable

part of 'k45_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K45 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K45Event extends Equatable {}

/// Event that is dispatched when the K45 widget is first created.
class K45InitialEvent extends K45Event {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends K45Event {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
