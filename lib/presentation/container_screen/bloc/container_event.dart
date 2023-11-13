// ignore_for_file: must_be_immutable

part of 'container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Container widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ContainerEvent extends Equatable {}

/// Event that is dispatched when the Container widget is first created.
class ContainerInitialEvent extends ContainerEvent {
  @override
  List<Object?> get props => [];
}
