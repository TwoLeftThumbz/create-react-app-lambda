// ignore_for_file: must_be_immutable

part of 'k54_bloc.dart';

/// Represents the state of K54 in the application.
class K54State extends Equatable {
  K54State({
    this.cellGeneralController,
    this.emailController,
    this.selectedDropDownValue,
    this.k54ModelObj,
  });

  TextEditingController? cellGeneralController;

  TextEditingController? emailController;

  SelectionPopupModel? selectedDropDownValue;

  K54Model? k54ModelObj;

  @override
  List<Object?> get props => [
        cellGeneralController,
        emailController,
        selectedDropDownValue,
        k54ModelObj,
      ];
  K54State copyWith({
    TextEditingController? cellGeneralController,
    TextEditingController? emailController,
    SelectionPopupModel? selectedDropDownValue,
    K54Model? k54ModelObj,
  }) {
    return K54State(
      cellGeneralController:
          cellGeneralController ?? this.cellGeneralController,
      emailController: emailController ?? this.emailController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      k54ModelObj: k54ModelObj ?? this.k54ModelObj,
    );
  }
}
