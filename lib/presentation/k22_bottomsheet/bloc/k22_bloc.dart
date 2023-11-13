import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k22_bottomsheet/models/k22_model.dart';
part 'k22_event.dart';
part 'k22_state.dart';

/// A bloc that manages the state of a K22 according to the event that is dispatched to it.
class K22Bloc extends Bloc<K22Event, K22State> {
  K22Bloc(K22State initialState) : super(initialState) {
    on<K22InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K22InitialEvent event,
    Emitter<K22State> emit,
  ) async {
    emit(state.copyWith(
      cellInfoController: TextEditingController(),
      buttonController: TextEditingController(),
      progressController: TextEditingController(),
    ));
  }
}
