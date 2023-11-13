import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/todaysection_item_model.dart';import 'package:bcc33_s_application1/presentation/nine_screen/models/nine_model.dart';part 'nine_event.dart';part 'nine_state.dart';/// A bloc that manages the state of a Nine according to the event that is dispatched to it.
class NineBloc extends Bloc<NineEvent, NineState> {NineBloc(NineState initialState) : super(initialState) { on<NineInitialEvent>(_onInitialize); }

List<TodaysectionItemModel> fillTodaysectionItemList() { return [TodaysectionItemModel(groupBy: "today"), TodaysectionItemModel(groupBy: "today"), TodaysectionItemModel(groupBy: "today"), TodaysectionItemModel(groupBy: "today"), TodaysectionItemModel(groupBy: "yesterday")]; } 
_onInitialize(NineInitialEvent event, Emitter<NineState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); emit(state.copyWith(nineModelObj: state.nineModelObj?.copyWith(todaysectionItemList: fillTodaysectionItemList()))); } 
 }
