import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k21_bottomsheet/models/k21_model.dart';
part 'k21_event.dart';
part 'k21_state.dart';

/// A bloc that manages the state of a K21 according to the event that is dispatched to it.
class K21Bloc extends Bloc<K21Event, K21State> {
  K21Bloc(K21State initialState) : super(initialState) {
    on<K21InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K21InitialEvent event,
    Emitter<K21State> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      kingTChallaController: TextEditingController(),
    ));
  }
}
