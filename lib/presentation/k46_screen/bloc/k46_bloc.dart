import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k46_screen/models/k46_model.dart';
part 'k46_event.dart';
part 'k46_state.dart';

/// A bloc that manages the state of a K46 according to the event that is dispatched to it.
class K46Bloc extends Bloc<K46Event, K46State> {
  K46Bloc(K46State initialState) : super(initialState) {
    on<K46InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K46InitialEvent event,
    Emitter<K46State> emit,
  ) async {}
}
