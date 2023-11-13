// ignore_for_file: must_be_immutable

part of 'tab_container1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TabContainer1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TabContainer1Event extends Equatable {}

/// Event that is dispatched when the TabContainer1 widget is first created.
class TabContainer1InitialEvent extends TabContainer1Event {
  @override
  List<Object?> get props => [];
}
