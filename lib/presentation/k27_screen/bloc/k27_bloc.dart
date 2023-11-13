import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:bcc33_s_application1/presentation/k27_screen/models/k27_model.dart';part 'k27_event.dart';part 'k27_state.dart';/// A bloc that manages the state of a K27 according to the event that is dispatched to it.
class K27Bloc extends Bloc<K27Event, K27State> {K27Bloc(K27State initialState) : super(initialState) { on<K27InitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_changeDropDown(ChangeDropDownEvent event, Emitter<K27State> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(K27InitialEvent event, Emitter<K27State> emit, ) async  { emit(state.copyWith(searchController: TextEditingController(), cellInfoController: TextEditingController())); emit(state.copyWith(k27ModelObj: state.k27ModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
 }
