import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/one_screen/models/one_model.dart';
part 'one_event.dart';
part 'one_state.dart';

/// A bloc that manages the state of a One according to the event that is dispatched to it.
class OneBloc extends Bloc<OneEvent, OneState> {
  OneBloc(OneState initialState) : super(initialState) {
    on<OneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OneInitialEvent event,
    Emitter<OneState> emit,
  ) async {}
}
