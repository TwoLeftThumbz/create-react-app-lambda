// ignore_for_file: must_be_immutable

part of 'eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Eight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EightEvent extends Equatable {}

/// Event that is dispatched when the Eight widget is first created.
class EightInitialEvent extends EightEvent {
  @override
  List<Object?> get props => [];
}
