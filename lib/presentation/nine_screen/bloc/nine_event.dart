// ignore_for_file: must_be_immutable

part of 'nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Nine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NineEvent extends Equatable {}

/// Event that is dispatched when the Nine widget is first created.
class NineInitialEvent extends NineEvent {
  @override
  List<Object?> get props => [];
}
