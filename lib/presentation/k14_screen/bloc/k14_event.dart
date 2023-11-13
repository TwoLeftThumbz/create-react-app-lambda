// ignore_for_file: must_be_immutable

part of 'k14_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K14 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K14Event extends Equatable {}

/// Event that is dispatched when the K14 widget is first created.
class K14InitialEvent extends K14Event {
  @override
  List<Object?> get props => [];
}
