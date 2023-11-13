// ignore_for_file: must_be_immutable

part of 'k34_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K34 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K34Event extends Equatable {}

/// Event that is dispatched when the K34 widget is first created.
class K34InitialEvent extends K34Event {
  @override
  List<Object?> get props => [];
}
