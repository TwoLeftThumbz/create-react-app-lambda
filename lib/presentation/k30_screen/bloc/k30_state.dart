// ignore_for_file: must_be_immutable

part of 'k30_bloc.dart';

/// Represents the state of K30 in the application.
class K30State extends Equatable {
  K30State({
    this.kingTChallaController,
    this.kingTChallaController1,
    this.kingTChallaController2,
    this.kingTChallaController3,
    this.kingTChallaController4,
    this.zipcodeController,
    this.selectedDropDownValue,
    this.england = false,
    this.k30ModelObj,
  });

  TextEditingController? kingTChallaController;

  TextEditingController? kingTChallaController1;

  TextEditingController? kingTChallaController2;

  TextEditingController? kingTChallaController3;

  TextEditingController? kingTChallaController4;

  TextEditingController? zipcodeController;

  SelectionPopupModel? selectedDropDownValue;

  K30Model? k30ModelObj;

  bool england;

  @override
  List<Object?> get props => [
        kingTChallaController,
        kingTChallaController1,
        kingTChallaController2,
        kingTChallaController3,
        kingTChallaController4,
        zipcodeController,
        selectedDropDownValue,
        england,
        k30ModelObj,
      ];
  K30State copyWith({
    TextEditingController? kingTChallaController,
    TextEditingController? kingTChallaController1,
    TextEditingController? kingTChallaController2,
    TextEditingController? kingTChallaController3,
    TextEditingController? kingTChallaController4,
    TextEditingController? zipcodeController,
    SelectionPopupModel? selectedDropDownValue,
    bool? england,
    K30Model? k30ModelObj,
  }) {
    return K30State(
      kingTChallaController:
          kingTChallaController ?? this.kingTChallaController,
      kingTChallaController1:
          kingTChallaController1 ?? this.kingTChallaController1,
      kingTChallaController2:
          kingTChallaController2 ?? this.kingTChallaController2,
      kingTChallaController3:
          kingTChallaController3 ?? this.kingTChallaController3,
      kingTChallaController4:
          kingTChallaController4 ?? this.kingTChallaController4,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      england: england ?? this.england,
      k30ModelObj: k30ModelObj ?? this.k30ModelObj,
    );
  }
}
