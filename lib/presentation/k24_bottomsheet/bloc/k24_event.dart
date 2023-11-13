// ignore_for_file: must_be_immutable

part of 'k24_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K24 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K24Event extends Equatable {}

/// Event that is dispatched when the K24 widget is first created.
class K24InitialEvent extends K24Event {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends K24Event {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends K24Event {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch2Event extends K24Event {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch3Event extends K24Event {
  ChangeSwitch3Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch4Event extends K24Event {
  ChangeSwitch4Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch5Event extends K24Event {
  ChangeSwitch5Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
