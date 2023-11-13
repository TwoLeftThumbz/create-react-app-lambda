import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k24_bottomsheet/models/k24_model.dart';
part 'k24_event.dart';
part 'k24_state.dart';

/// A bloc that manages the state of a K24 according to the event that is dispatched to it.
class K24Bloc extends Bloc<K24Event, K24State> {
  K24Bloc(K24State initialState) : super(initialState) {
    on<K24InitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
    on<ChangeSwitch2Event>(_changeSwitch2);
    on<ChangeSwitch3Event>(_changeSwitch3);
    on<ChangeSwitch4Event>(_changeSwitch4);
    on<ChangeSwitch5Event>(_changeSwitch5);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<K24State> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<K24State> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch1: event.value,
    ));
  }

  _changeSwitch2(
    ChangeSwitch2Event event,
    Emitter<K24State> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch2: event.value,
    ));
  }

  _changeSwitch3(
    ChangeSwitch3Event event,
    Emitter<K24State> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch3: event.value,
    ));
  }

  _changeSwitch4(
    ChangeSwitch4Event event,
    Emitter<K24State> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch4: event.value,
    ));
  }

  _changeSwitch5(
    ChangeSwitch5Event event,
    Emitter<K24State> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch5: event.value,
    ));
  }

  _onInitialize(
    K24InitialEvent event,
    Emitter<K24State> emit,
  ) async {
    emit(state.copyWith(
      cellInfoController: TextEditingController(),
      isSelectedSwitch: false,
      isSelectedSwitch1: false,
      isSelectedSwitch2: false,
      isSelectedSwitch3: false,
      isSelectedSwitch4: false,
      isSelectedSwitch5: false,
    ));
  }
}
