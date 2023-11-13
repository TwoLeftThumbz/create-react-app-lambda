import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:bcc33_s_application1/presentation/k37_screen/models/k37_model.dart';part 'k37_event.dart';part 'k37_state.dart';/// A bloc that manages the state of a K37 according to the event that is dispatched to it.
class K37Bloc extends Bloc<K37Event, K37State> {K37Bloc(K37State initialState) : super(initialState) { on<K37InitialEvent>(_onInitialize); }

_onInitialize(K37InitialEvent event, Emitter<K37State> emit, ) async  { emit(state.copyWith(cellInfoController: TextEditingController())); } 
 }
