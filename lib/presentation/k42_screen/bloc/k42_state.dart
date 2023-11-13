// ignore_for_file: must_be_immutable

part of 'k42_bloc.dart';

/// Represents the state of K42 in the application.
class K42State extends Equatable {
  K42State({
    this.iconsController,
    this.k42ModelObj,
  });

  TextEditingController? iconsController;

  K42Model? k42ModelObj;

  @override
  List<Object?> get props => [
        iconsController,
        k42ModelObj,
      ];
  K42State copyWith({
    TextEditingController? iconsController,
    K42Model? k42ModelObj,
  }) {
    return K42State(
      iconsController: iconsController ?? this.iconsController,
      k42ModelObj: k42ModelObj ?? this.k42ModelObj,
    );
  }
}
