import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:bcc33_s_application1/presentation/k28_bottomsheet/models/k28_model.dart';part 'k28_event.dart';part 'k28_state.dart';/// A bloc that manages the state of a K28 according to the event that is dispatched to it.
class K28Bloc extends Bloc<K28Event, K28State> {K28Bloc(K28State initialState) : super(initialState) { on<K28InitialEvent>(_onInitialize); }

_onInitialize(K28InitialEvent event, Emitter<K28State> emit, ) async  { emit(state.copyWith(priceController: TextEditingController(), priceController1: TextEditingController(), priceController2: TextEditingController())); } 
 }
