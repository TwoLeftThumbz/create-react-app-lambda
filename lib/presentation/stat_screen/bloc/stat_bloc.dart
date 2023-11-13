import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/stat_screen/models/stat_model.dart';
part 'stat_event.dart';
part 'stat_state.dart';

/// A bloc that manages the state of a Stat according to the event that is dispatched to it.
class StatBloc extends Bloc<StatEvent, StatState> {
  StatBloc(StatState initialState) : super(initialState) {
    on<StatInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StatInitialEvent event,
    Emitter<StatState> emit,
  ) async {}
}
