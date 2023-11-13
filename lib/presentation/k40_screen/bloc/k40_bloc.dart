import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/subtitle3_item_model.dart';import 'package:bcc33_s_application1/presentation/k40_screen/models/k40_model.dart';part 'k40_event.dart';part 'k40_state.dart';/// A bloc that manages the state of a K40 according to the event that is dispatched to it.
class K40Bloc extends Bloc<K40Event, K40State> {K40Bloc(K40State initialState) : super(initialState) { on<K40InitialEvent>(_onInitialize); }

List<Subtitle3ItemModel> fillSubtitle3ItemList() { return [Subtitle3ItemModel(subtitle: "paid where", harryPotter: "Online", copied: "copied"), Subtitle3ItemModel(subtitle: "you paid", harryPotter: "£ 751", copied: "copied"), Subtitle3ItemModel(subtitle: "transfer fee", harryPotter: "£ 0", copied: "copied")]; } 
_onInitialize(K40InitialEvent event, Emitter<K40State> emit, ) async  { emit(state.copyWith(cellInfoController: TextEditingController())); emit(state.copyWith(k40ModelObj: state.k40ModelObj?.copyWith(subtitle3ItemList: fillSubtitle3ItemList()))); } 
 }
