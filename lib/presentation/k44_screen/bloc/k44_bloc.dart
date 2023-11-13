import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/ninetyfour_item_model.dart';
import 'package:bcc33_s_application1/presentation/k44_screen/models/k44_model.dart';
part 'k44_event.dart';
part 'k44_state.dart';

/// A bloc that manages the state of a K44 according to the event that is dispatched to it.
class K44Bloc extends Bloc<K44Event, K44State> {
  K44Bloc(K44State initialState) : super(initialState) {
    on<K44InitialEvent>(_onInitialize);
  }

  List<NinetyfourItemModel> fillNinetyfourItemList() {
    return List.generate(1, (index) => NinetyfourItemModel());
  }

  _onInitialize(
    K44InitialEvent event,
    Emitter<K44State> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        k44ModelObj: state.k44ModelObj?.copyWith(
      ninetyfourItemList: fillNinetyfourItemList(),
    )));
  }
}
