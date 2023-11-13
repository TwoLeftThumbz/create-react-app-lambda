import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k16_screen/models/k16_model.dart';
part 'k16_event.dart';
part 'k16_state.dart';

/// A bloc that manages the state of a K16 according to the event that is dispatched to it.
class K16Bloc extends Bloc<K16Event, K16State> {
  K16Bloc(K16State initialState) : super(initialState) {
    on<K16InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K16InitialEvent event,
    Emitter<K16State> emit,
  ) async {}
}
