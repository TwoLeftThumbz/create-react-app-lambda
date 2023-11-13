// ignore_for_file: must_be_immutable

part of 'k28_bloc.dart';

/// Represents the state of K28 in the application.
class K28State extends Equatable {
  K28State({
    this.priceController,
    this.priceController1,
    this.priceController2,
    this.k28ModelObj,
  });

  TextEditingController? priceController;

  TextEditingController? priceController1;

  TextEditingController? priceController2;

  K28Model? k28ModelObj;

  @override
  List<Object?> get props => [
        priceController,
        priceController1,
        priceController2,
        k28ModelObj,
      ];
  K28State copyWith({
    TextEditingController? priceController,
    TextEditingController? priceController1,
    TextEditingController? priceController2,
    K28Model? k28ModelObj,
  }) {
    return K28State(
      priceController: priceController ?? this.priceController,
      priceController1: priceController1 ?? this.priceController1,
      priceController2: priceController2 ?? this.priceController2,
      k28ModelObj: k28ModelObj ?? this.k28ModelObj,
    );
  }
}
