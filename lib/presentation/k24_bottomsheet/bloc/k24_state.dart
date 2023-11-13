// ignore_for_file: must_be_immutable

part of 'k24_bloc.dart';

/// Represents the state of K24 in the application.
class K24State extends Equatable {
  K24State({
    this.cellInfoController,
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.isSelectedSwitch3 = false,
    this.isSelectedSwitch4 = false,
    this.isSelectedSwitch5 = false,
    this.k24ModelObj,
  });

  TextEditingController? cellInfoController;

  K24Model? k24ModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  bool isSelectedSwitch3;

  bool isSelectedSwitch4;

  bool isSelectedSwitch5;

  @override
  List<Object?> get props => [
        cellInfoController,
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        isSelectedSwitch3,
        isSelectedSwitch4,
        isSelectedSwitch5,
        k24ModelObj,
      ];
  K24State copyWith({
    TextEditingController? cellInfoController,
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    bool? isSelectedSwitch3,
    bool? isSelectedSwitch4,
    bool? isSelectedSwitch5,
    K24Model? k24ModelObj,
  }) {
    return K24State(
      cellInfoController: cellInfoController ?? this.cellInfoController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      isSelectedSwitch3: isSelectedSwitch3 ?? this.isSelectedSwitch3,
      isSelectedSwitch4: isSelectedSwitch4 ?? this.isSelectedSwitch4,
      isSelectedSwitch5: isSelectedSwitch5 ?? this.isSelectedSwitch5,
      k24ModelObj: k24ModelObj ?? this.k24ModelObj,
    );
  }
}
