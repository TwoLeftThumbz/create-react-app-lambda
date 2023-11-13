import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:bcc33_s_application1/presentation/container_screen/models/container_model.dart';part 'container_event.dart';part 'container_state.dart';/// A bloc that manages the state of a Container according to the event that is dispatched to it.
class ContainerBloc extends Bloc<ContainerEvent, ContainerState> {ContainerBloc(ContainerState initialState) : super(initialState) { on<ContainerInitialEvent>(_onInitialize); }

_onInitialize(ContainerInitialEvent event, Emitter<ContainerState> emit, ) async  {  } 
 }
