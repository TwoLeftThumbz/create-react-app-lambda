import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/stat_two_screen/models/stat_two_model.dart';
part 'stat_two_event.dart';
part 'stat_two_state.dart';

/// A bloc that manages the state of a StatTwo according to the event that is dispatched to it.
class StatTwoBloc extends Bloc<StatTwoEvent, StatTwoState> {
  StatTwoBloc(StatTwoState initialState) : super(initialState) {
    on<StatTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StatTwoInitialEvent event,
    Emitter<StatTwoState> emit,
  ) async {}
}
