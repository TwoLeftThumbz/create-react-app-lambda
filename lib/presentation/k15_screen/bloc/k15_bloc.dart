import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k15_screen/models/k15_model.dart';
part 'k15_event.dart';
part 'k15_state.dart';

/// A bloc that manages the state of a K15 according to the event that is dispatched to it.
class K15Bloc extends Bloc<K15Event, K15State> {
  K15Bloc(K15State initialState) : super(initialState) {
    on<K15InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K15InitialEvent event,
    Emitter<K15State> emit,
  ) async {}
}
