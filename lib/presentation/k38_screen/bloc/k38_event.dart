// ignore_for_file: must_be_immutable

part of 'k38_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K38 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K38Event extends Equatable {}

/// Event that is dispatched when the K38 widget is first created.
class K38InitialEvent extends K38Event {
  @override
  List<Object?> get props => [];
}
