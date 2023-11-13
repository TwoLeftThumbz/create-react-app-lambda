// ignore_for_file: must_be_immutable

part of 'k34_bloc.dart';

/// Represents the state of K34 in the application.
class K34State extends Equatable {
  K34State({
    this.kingTChallaController,
    this.dateController,
    this.k34ModelObj,
  });

  TextEditingController? kingTChallaController;

  TextEditingController? dateController;

  K34Model? k34ModelObj;

  @override
  List<Object?> get props => [
        kingTChallaController,
        dateController,
        k34ModelObj,
      ];
  K34State copyWith({
    TextEditingController? kingTChallaController,
    TextEditingController? dateController,
    K34Model? k34ModelObj,
  }) {
    return K34State(
      kingTChallaController:
          kingTChallaController ?? this.kingTChallaController,
      dateController: dateController ?? this.dateController,
      k34ModelObj: k34ModelObj ?? this.k34ModelObj,
    );
  }
}
