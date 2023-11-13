// ignore_for_file: must_be_immutable

part of 'seven_bloc.dart';

/// Represents the state of Seven in the application.
class SevenState extends Equatable {
  SevenState({
    this.isSelectedSwitch = false,
    this.sevenModelObj,
  });

  SevenModel? sevenModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        sevenModelObj,
      ];
  SevenState copyWith({
    bool? isSelectedSwitch,
    SevenModel? sevenModelObj,
  }) {
    return SevenState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      sevenModelObj: sevenModelObj ?? this.sevenModelObj,
    );
  }
}
