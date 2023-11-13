import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k18_screen/models/k18_model.dart';
part 'k18_event.dart';
part 'k18_state.dart';

/// A bloc that manages the state of a K18 according to the event that is dispatched to it.
class K18Bloc extends Bloc<K18Event, K18State> {
  K18Bloc(K18State initialState) : super(initialState) {
    on<K18InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K18InitialEvent event,
    Emitter<K18State> emit,
  ) async {}
}
