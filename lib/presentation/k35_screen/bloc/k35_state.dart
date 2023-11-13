// ignore_for_file: must_be_immutable

part of 'k35_bloc.dart';

/// Represents the state of K35 in the application.
class K35State extends Equatable {
  K35State({
    this.iconsController,
    this.k35ModelObj,
  });

  TextEditingController? iconsController;

  K35Model? k35ModelObj;

  @override
  List<Object?> get props => [
        iconsController,
        k35ModelObj,
      ];
  K35State copyWith({
    TextEditingController? iconsController,
    K35Model? k35ModelObj,
  }) {
    return K35State(
      iconsController: iconsController ?? this.iconsController,
      k35ModelObj: k35ModelObj ?? this.k35ModelObj,
    );
  }
}
