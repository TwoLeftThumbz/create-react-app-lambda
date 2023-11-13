// ignore_for_file: must_be_immutable

part of 'k59_bloc.dart';

/// Represents the state of K59 in the application.
class K59State extends Equatable {
  K59State({
    this.emailController,
    this.selectedDropDownValue,
    this.k59ModelObj,
  });

  TextEditingController? emailController;

  SelectionPopupModel? selectedDropDownValue;

  K59Model? k59ModelObj;

  @override
  List<Object?> get props => [
        emailController,
        selectedDropDownValue,
        k59ModelObj,
      ];
  K59State copyWith({
    TextEditingController? emailController,
    SelectionPopupModel? selectedDropDownValue,
    K59Model? k59ModelObj,
  }) {
    return K59State(
      emailController: emailController ?? this.emailController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      k59ModelObj: k59ModelObj ?? this.k59ModelObj,
    );
  }
}
