import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/subtitle_item_model.dart';
import 'package:bcc33_s_application1/presentation/k19_bottomsheet/models/k19_model.dart';
part 'k19_event.dart';
part 'k19_state.dart';

/// A bloc that manages the state of a K19 according to the event that is dispatched to it.
class K19Bloc extends Bloc<K19Event, K19State> {
  K19Bloc(K19State initialState) : super(initialState) {
    on<K19InitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<K19State> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  List<SubtitleItemModel> fillSubtitleItemList() {
    return [
      SubtitleItemModel(
          subtitle: "Name on card",
          harryPotter: "Harry James Potter",
          copied: "copied"),
      SubtitleItemModel(
          subtitle: "Expiry date", harryPotter: "01/23", copied: "copied"),
      SubtitleItemModel(
          subtitle: "security code", harryPotter: "456", copied: "copied")
    ];
  }

  _onInitialize(
    K19InitialEvent event,
    Emitter<K19State> emit,
  ) async {
    emit(state.copyWith(
      passwordController: TextEditingController(),
      isShowPassword: true,
    ));
    emit(state.copyWith(
        k19ModelObj: state.k19ModelObj?.copyWith(
      subtitleItemList: fillSubtitleItemList(),
    )));
  }
}
