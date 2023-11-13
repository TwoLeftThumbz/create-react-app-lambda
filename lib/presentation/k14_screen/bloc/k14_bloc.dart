import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k14_screen/models/k14_model.dart';
part 'k14_event.dart';
part 'k14_state.dart';

/// A bloc that manages the state of a K14 according to the event that is dispatched to it.
class K14Bloc extends Bloc<K14Event, K14State> {
  K14Bloc(K14State initialState) : super(initialState) {
    on<K14InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K14InitialEvent event,
    Emitter<K14State> emit,
  ) async {}
}
