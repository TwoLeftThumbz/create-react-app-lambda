import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:bcc33_s_application1/presentation/k36_screen/models/k36_model.dart';part 'k36_event.dart';part 'k36_state.dart';/// A bloc that manages the state of a K36 according to the event that is dispatched to it.
class K36Bloc extends Bloc<K36Event, K36State> {K36Bloc(K36State initialState) : super(initialState) { on<K36InitialEvent>(_onInitialize); }

_onInitialize(K36InitialEvent event, Emitter<K36State> emit, ) async  {  } 
 }
