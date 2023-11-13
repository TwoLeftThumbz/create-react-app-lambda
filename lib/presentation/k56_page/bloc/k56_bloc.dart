import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/beneficiarylist_item_model.dart';import 'package:bcc33_s_application1/presentation/k56_page/models/k56_model.dart';part 'k56_event.dart';part 'k56_state.dart';/// A bloc that manages the state of a K56 according to the event that is dispatched to it.
class K56Bloc extends Bloc<K56Event, K56State> {K56Bloc(K56State initialState) : super(initialState) { on<K56InitialEvent>(_onInitialize); }

_onInitialize(K56InitialEvent event, Emitter<K56State> emit, ) async  { emit(state.copyWith(k56ModelObj: state.k56ModelObj?.copyWith(beneficiarylistItemList: fillBeneficiarylistItemList()))); } 
List<BeneficiarylistItemModel> fillBeneficiarylistItemList() { return [BeneficiarylistItemModel(newTeammember: ImageConstant.imgIcons21, louisVuitton: "New Team member")]; } 
 }
