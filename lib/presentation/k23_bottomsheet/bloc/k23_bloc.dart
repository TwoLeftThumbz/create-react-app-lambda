import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k23_bottomsheet/models/k23_model.dart';
part 'k23_event.dart';
part 'k23_state.dart';

/// A bloc that manages the state of a K23 according to the event that is dispatched to it.
class K23Bloc extends Bloc<K23Event, K23State> {
  K23Bloc(K23State initialState) : super(initialState) {
    on<K23InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K23InitialEvent event,
    Emitter<K23State> emit,
  ) async {
    emit(state.copyWith(
      kingTChallaController: TextEditingController(),
      kingTChallaController1: TextEditingController(),
    ));
  }
}
