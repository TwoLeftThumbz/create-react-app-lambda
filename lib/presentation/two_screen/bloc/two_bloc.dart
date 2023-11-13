import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:bcc33_s_application1/presentation/two_screen/models/two_model.dart';part 'two_event.dart';part 'two_state.dart';/// A bloc that manages the state of a Two according to the event that is dispatched to it.
class TwoBloc extends Bloc<TwoEvent, TwoState> {TwoBloc(TwoState initialState) : super(initialState) { on<TwoInitialEvent>(_onInitialize); }

_onInitialize(TwoInitialEvent event, Emitter<TwoState> emit, ) async  {  } 
 }
