import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:bcc33_s_application1/presentation/k32_screen/models/k32_model.dart';part 'k32_event.dart';part 'k32_state.dart';/// A bloc that manages the state of a K32 according to the event that is dispatched to it.
class K32Bloc extends Bloc<K32Event, K32State> {K32Bloc(K32State initialState) : super(initialState) { on<K32InitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<K32State> emit, ) { emit(state.copyWith(gbp: event.value)); } 
_onInitialize(K32InitialEvent event, Emitter<K32State> emit, ) async  { emit(state.copyWith(gbp: false)); } 
 }
