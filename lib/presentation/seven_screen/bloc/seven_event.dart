// ignore_for_file: must_be_immutable

part of 'seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Seven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SevenEvent extends Equatable {}

/// Event that is dispatched when the Seven widget is first created.
class SevenInitialEvent extends SevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends SevenEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
