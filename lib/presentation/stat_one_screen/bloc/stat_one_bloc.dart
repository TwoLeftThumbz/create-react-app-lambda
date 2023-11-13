import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/stat_one_screen/models/stat_one_model.dart';
part 'stat_one_event.dart';
part 'stat_one_state.dart';

/// A bloc that manages the state of a StatOne according to the event that is dispatched to it.
class StatOneBloc extends Bloc<StatOneEvent, StatOneState> {
  StatOneBloc(StatOneState initialState) : super(initialState) {
    on<StatOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StatOneInitialEvent event,
    Emitter<StatOneState> emit,
  ) async {}
}
