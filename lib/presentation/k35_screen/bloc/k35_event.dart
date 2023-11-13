// ignore_for_file: must_be_immutable

part of 'k35_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K35 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K35Event extends Equatable {}

/// Event that is dispatched when the K35 widget is first created.
class K35InitialEvent extends K35Event {
  @override
  List<Object?> get props => [];
}
