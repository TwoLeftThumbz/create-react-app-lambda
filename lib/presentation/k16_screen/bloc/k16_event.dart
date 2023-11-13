// ignore_for_file: must_be_immutable

part of 'k16_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K16 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K16Event extends Equatable {}

/// Event that is dispatched when the K16 widget is first created.
class K16InitialEvent extends K16Event {
  @override
  List<Object?> get props => [];
}
