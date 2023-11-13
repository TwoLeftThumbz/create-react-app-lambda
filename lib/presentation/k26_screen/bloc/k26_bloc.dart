import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/icons1_item_model.dart';import '../models/bigctas1_item_model.dart';import 'package:bcc33_s_application1/presentation/k26_screen/models/k26_model.dart';part 'k26_event.dart';part 'k26_state.dart';/// A bloc that manages the state of a K26 according to the event that is dispatched to it.
class K26Bloc extends Bloc<K26Event, K26State> {K26Bloc(K26State initialState) : super(initialState) { on<K26InitialEvent>(_onInitialize); }

_onInitialize(K26InitialEvent event, Emitter<K26State> emit, ) async  { emit(state.copyWith(k26ModelObj: state.k26ModelObj?.copyWith(icons1ItemList: fillIcons1ItemList(), bigctas1ItemList: fillBigctas1ItemList()))); } 
List<Icons1ItemModel> fillIcons1ItemList() { return [Icons1ItemModel(price: "USD", price1: " 150,475", copied: "copied")]; } 
List<Bigctas1ItemModel> fillBigctas1ItemList() { return [Bigctas1ItemModel(newbeneficiary: ImageConstant.imgIconsOnprimarycontainer, harryPotter: "New beneficiary"), Bigctas1ItemModel(newbeneficiary: ImageConstant.imgIcons15, harryPotter: "New conversion")]; } 
 }
