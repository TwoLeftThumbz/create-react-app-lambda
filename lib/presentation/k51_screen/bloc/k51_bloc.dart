import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/bw2_item_model.dart';import 'package:bcc33_s_application1/presentation/k51_screen/models/k51_model.dart';part 'k51_event.dart';part 'k51_state.dart';/// A bloc that manages the state of a K51 according to the event that is dispatched to it.
class K51Bloc extends Bloc<K51Event, K51State> {K51Bloc(K51State initialState) : super(initialState) { on<K51InitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_changeDropDown(ChangeDropDownEvent event, Emitter<K51State> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
List<Bw2ItemModel> fillBw2ItemList() { return [Bw2ItemModel(louisVuitton: "JNKK", purchased: "Account ending with 6888"), Bw2ItemModel(louisVuitton: "Wayne Enterprise", purchased: "Account ending with 1256"), Bw2ItemModel(louisVuitton: "Hogwarts", purchased: "Account ending with 5146"), Bw2ItemModel(louisVuitton: "Bruce Wayne", purchased: "Account ending with 1111"), Bw2ItemModel(louisVuitton: "katsumi Sato", purchased: "Account ending with 7890"), Bw2ItemModel(louisVuitton: "Bukola Kallel", purchased: "Account ending with 4567"), Bw2ItemModel(louisVuitton: "Defne Gross", purchased: "Account ending with 4321"), Bw2ItemModel(louisVuitton: "Jakub Tanaka", purchased: "Account ending with 9876"), Bw2ItemModel(louisVuitton: "Franziska Szabó", purchased: "Account ending with 3210")]; } 
_onInitialize(K51InitialEvent event, Emitter<K51State> emit, ) async  { emit(state.copyWith(searchController: TextEditingController(), cellGeneralController: TextEditingController(), kingTChallaController: TextEditingController(), kingTChallaController1: TextEditingController(), kingTChallaController2: TextEditingController(), kingTChallaController3: TextEditingController(), kingTChallaController4: TextEditingController(), zipcodeController: TextEditingController())); emit(state.copyWith(k51ModelObj: state.k51ModelObj?.copyWith(dropdownItemList: fillDropdownItemList(), bw2ItemList: fillBw2ItemList()))); } 
 }