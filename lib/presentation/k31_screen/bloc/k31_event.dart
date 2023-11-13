// ignore_for_file: must_be_immutable

part of 'k31_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K31 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K31Event extends Equatable {}

/// Event that is dispatched when the K31 widget is first created.
class K31InitialEvent extends K31Event {
  @override
  List<Object?> get props => [];
}
