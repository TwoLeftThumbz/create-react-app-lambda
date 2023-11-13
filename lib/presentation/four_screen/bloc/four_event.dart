// ignore_for_file: must_be_immutable

part of 'four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Four widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FourEvent extends Equatable {}

/// Event that is dispatched when the Four widget is first created.
class FourInitialEvent extends FourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends FourEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
