// ignore_for_file: must_be_immutable

part of 'k21_bloc.dart';

/// Represents the state of K21 in the application.
class K21State extends Equatable {
  K21State({
    this.nameController,
    this.kingTChallaController,
    this.k21ModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? kingTChallaController;

  K21Model? k21ModelObj;

  @override
  List<Object?> get props => [
        nameController,
        kingTChallaController,
        k21ModelObj,
      ];
  K21State copyWith({
    TextEditingController? nameController,
    TextEditingController? kingTChallaController,
    K21Model? k21ModelObj,
  }) {
    return K21State(
      nameController: nameController ?? this.nameController,
      kingTChallaController:
          kingTChallaController ?? this.kingTChallaController,
      k21ModelObj: k21ModelObj ?? this.k21ModelObj,
    );
  }
}
