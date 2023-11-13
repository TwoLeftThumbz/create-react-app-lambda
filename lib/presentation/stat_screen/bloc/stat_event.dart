// ignore_for_file: must_be_immutable

part of 'stat_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Stat widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class StatEvent extends Equatable {}

/// Event that is dispatched when the Stat widget is first created.
class StatInitialEvent extends StatEvent {
  @override
  List<Object?> get props => [];
}
