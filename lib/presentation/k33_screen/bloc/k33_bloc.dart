import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:bcc33_s_application1/presentation/k33_screen/models/k33_model.dart';part 'k33_event.dart';part 'k33_state.dart';/// A bloc that manages the state of a K33 according to the event that is dispatched to it.
class K33Bloc extends Bloc<K33Event, K33State> {K33Bloc(K33State initialState) : super(initialState) { on<K33InitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_onInitialize(K33InitialEvent event, Emitter<K33State> emit, ) async  { emit(state.copyWith(k33ModelObj: state.k33ModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
_changeDropDown(ChangeDropDownEvent event, Emitter<K33State> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
 }
