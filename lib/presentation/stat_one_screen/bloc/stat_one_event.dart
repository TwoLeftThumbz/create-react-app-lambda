// ignore_for_file: must_be_immutable

part of 'stat_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///StatOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class StatOneEvent extends Equatable {}

/// Event that is dispatched when the StatOne widget is first created.
class StatOneInitialEvent extends StatOneEvent {
  @override
  List<Object?> get props => [];
}
