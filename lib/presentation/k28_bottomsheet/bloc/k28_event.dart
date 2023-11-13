// ignore_for_file: must_be_immutable

part of 'k28_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K28 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K28Event extends Equatable {}

/// Event that is dispatched when the K28 widget is first created.
class K28InitialEvent extends K28Event {
  @override
  List<Object?> get props => [];
}
