// ignore_for_file: must_be_immutable

part of 'k23_bloc.dart';

/// Represents the state of K23 in the application.
class K23State extends Equatable {
  K23State({
    this.kingTChallaController,
    this.kingTChallaController1,
    this.k23ModelObj,
  });

  TextEditingController? kingTChallaController;

  TextEditingController? kingTChallaController1;

  K23Model? k23ModelObj;

  @override
  List<Object?> get props => [
        kingTChallaController,
        kingTChallaController1,
        k23ModelObj,
      ];
  K23State copyWith({
    TextEditingController? kingTChallaController,
    TextEditingController? kingTChallaController1,
    K23Model? k23ModelObj,
  }) {
    return K23State(
      kingTChallaController:
          kingTChallaController ?? this.kingTChallaController,
      kingTChallaController1:
          kingTChallaController1 ?? this.kingTChallaController1,
      k23ModelObj: k23ModelObj ?? this.k23ModelObj,
    );
  }
}
