import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k17_screen/models/k17_model.dart';
part 'k17_event.dart';
part 'k17_state.dart';

/// A bloc that manages the state of a K17 according to the event that is dispatched to it.
class K17Bloc extends Bloc<K17Event, K17State> {
  K17Bloc(K17State initialState) : super(initialState) {
    on<K17InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K17InitialEvent event,
    Emitter<K17State> emit,
  ) async {}
}
