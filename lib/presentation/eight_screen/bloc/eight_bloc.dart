import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/eight_screen/models/eight_model.dart';
part 'eight_event.dart';
part 'eight_state.dart';

/// A bloc that manages the state of a Eight according to the event that is dispatched to it.
class EightBloc extends Bloc<EightEvent, EightState> {
  EightBloc(EightState initialState) : super(initialState) {
    on<EightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EightInitialEvent event,
    Emitter<EightState> emit,
  ) async {}
}
