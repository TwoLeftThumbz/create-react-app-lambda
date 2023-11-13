// ignore_for_file: must_be_immutable

part of 'k29_bloc.dart';

/// Represents the state of K29 in the application.
class K29State extends Equatable {
  K29State({
    this.kingTChallaController,
    this.kingTChallaController1,
    this.firstNameController,
    this.lastNameController,
    this.cityController,
    this.zipcodeController,
    this.selectedDropDownValue,
    this.k29ModelObj,
  });

  TextEditingController? kingTChallaController;

  TextEditingController? kingTChallaController1;

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? cityController;

  TextEditingController? zipcodeController;

  SelectionPopupModel? selectedDropDownValue;

  K29Model? k29ModelObj;

  @override
  List<Object?> get props => [
        kingTChallaController,
        kingTChallaController1,
        firstNameController,
        lastNameController,
        cityController,
        zipcodeController,
        selectedDropDownValue,
        k29ModelObj,
      ];
  K29State copyWith({
    TextEditingController? kingTChallaController,
    TextEditingController? kingTChallaController1,
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? cityController,
    TextEditingController? zipcodeController,
    SelectionPopupModel? selectedDropDownValue,
    K29Model? k29ModelObj,
  }) {
    return K29State(
      kingTChallaController:
          kingTChallaController ?? this.kingTChallaController,
      kingTChallaController1:
          kingTChallaController1 ?? this.kingTChallaController1,
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      cityController: cityController ?? this.cityController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      k29ModelObj: k29ModelObj ?? this.k29ModelObj,
    );
  }
}
