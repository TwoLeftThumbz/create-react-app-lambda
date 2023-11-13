import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/five_screen/models/five_model.dart';
part 'five_event.dart';
part 'five_state.dart';

/// A bloc that manages the state of a Five according to the event that is dispatched to it.
class FiveBloc extends Bloc<FiveEvent, FiveState> {
  FiveBloc(FiveState initialState) : super(initialState) {
    on<FiveInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<FiveState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    FiveInitialEvent event,
    Emitter<FiveState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
