// ignore_for_file: must_be_immutable

part of 'k19_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K19 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K19Event extends Equatable {}

/// Event that is dispatched when the K19 widget is first created.
class K19InitialEvent extends K19Event {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends K19Event {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
