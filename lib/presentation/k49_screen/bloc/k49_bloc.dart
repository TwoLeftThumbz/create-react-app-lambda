import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:bcc33_s_application1/presentation/k49_screen/models/k49_model.dart';part 'k49_event.dart';part 'k49_state.dart';/// A bloc that manages the state of a K49 according to the event that is dispatched to it.
class K49Bloc extends Bloc<K49Event, K49State> {K49Bloc(K49State initialState) : super(initialState) { on<K49InitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<K49State> emit, ) { emit(state.copyWith(gbp: event.value)); } 
_onInitialize(K49InitialEvent event, Emitter<K49State> emit, ) async  { emit(state.copyWith(zipcodeController: TextEditingController(), cellInfoController: TextEditingController(), cellInfoController1: TextEditingController(), gbp: false)); } 
 }
