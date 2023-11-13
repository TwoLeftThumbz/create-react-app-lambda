// ignore_for_file: must_be_immutable

part of 'tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TabContainerEvent extends Equatable {}

/// Event that is dispatched when the TabContainer widget is first created.
class TabContainerInitialEvent extends TabContainerEvent {
  @override
  List<Object?> get props => [];
}
