// ignore_for_file: must_be_immutable

part of 'k49_bloc.dart';

/// Represents the state of K49 in the application.
class K49State extends Equatable {
  K49State({
    this.zipcodeController,
    this.cellInfoController,
    this.cellInfoController1,
    this.gbp = false,
    this.k49ModelObj,
  });

  TextEditingController? zipcodeController;

  TextEditingController? cellInfoController;

  TextEditingController? cellInfoController1;

  K49Model? k49ModelObj;

  bool gbp;

  @override
  List<Object?> get props => [
        zipcodeController,
        cellInfoController,
        cellInfoController1,
        gbp,
        k49ModelObj,
      ];
  K49State copyWith({
    TextEditingController? zipcodeController,
    TextEditingController? cellInfoController,
    TextEditingController? cellInfoController1,
    bool? gbp,
    K49Model? k49ModelObj,
  }) {
    return K49State(
      zipcodeController: zipcodeController ?? this.zipcodeController,
      cellInfoController: cellInfoController ?? this.cellInfoController,
      cellInfoController1: cellInfoController1 ?? this.cellInfoController1,
      gbp: gbp ?? this.gbp,
      k49ModelObj: k49ModelObj ?? this.k49ModelObj,
    );
  }
}
