// ignore_for_file: must_be_immutable

part of 'k33_bloc.dart';

/// Represents the state of K33 in the application.
class K33State extends Equatable {
  K33State({
    this.selectedDropDownValue,
    this.k33ModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  K33Model? k33ModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        k33ModelObj,
      ];
  K33State copyWith({
    SelectionPopupModel? selectedDropDownValue,
    K33Model? k33ModelObj,
  }) {
    return K33State(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      k33ModelObj: k33ModelObj ?? this.k33ModelObj,
    );
  }
}
