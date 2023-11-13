// ignore_for_file: must_be_immutable

part of 'k18_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K18 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K18Event extends Equatable {}

/// Event that is dispatched when the K18 widget is first created.
class K18InitialEvent extends K18Event {
  @override
  List<Object?> get props => [];
}
