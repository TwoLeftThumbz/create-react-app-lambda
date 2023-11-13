import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k13_screen/models/k13_model.dart';
part 'k13_event.dart';
part 'k13_state.dart';

/// A bloc that manages the state of a K13 according to the event that is dispatched to it.
class K13Bloc extends Bloc<K13Event, K13State> {
  K13Bloc(K13State initialState) : super(initialState) {
    on<K13InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K13InitialEvent event,
    Emitter<K13State> emit,
  ) async {}
}
