import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k20_bottomsheet/models/k20_model.dart';
part 'k20_event.dart';
part 'k20_state.dart';

/// A bloc that manages the state of a K20 according to the event that is dispatched to it.
class K20Bloc extends Bloc<K20Event, K20State> {
  K20Bloc(K20State initialState) : super(initialState) {
    on<K20InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K20InitialEvent event,
    Emitter<K20State> emit,
  ) async {}
}
