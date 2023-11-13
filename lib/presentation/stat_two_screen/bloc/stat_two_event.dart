// ignore_for_file: must_be_immutable

part of 'stat_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///StatTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class StatTwoEvent extends Equatable {}

/// Event that is dispatched when the StatTwo widget is first created.
class StatTwoInitialEvent extends StatTwoEvent {
  @override
  List<Object?> get props => [];
}
