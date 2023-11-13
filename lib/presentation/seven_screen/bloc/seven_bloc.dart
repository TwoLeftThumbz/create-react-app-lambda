import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/seven_screen/models/seven_model.dart';
part 'seven_event.dart';
part 'seven_state.dart';

/// A bloc that manages the state of a Seven according to the event that is dispatched to it.
class SevenBloc extends Bloc<SevenEvent, SevenState> {
  SevenBloc(SevenState initialState) : super(initialState) {
    on<SevenInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<SevenState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    SevenInitialEvent event,
    Emitter<SevenState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
