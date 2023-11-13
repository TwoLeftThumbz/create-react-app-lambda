// ignore_for_file: must_be_immutable

part of 'five_bloc.dart';

/// Represents the state of Five in the application.
class FiveState extends Equatable {
  FiveState({
    this.isSelectedSwitch = false,
    this.fiveModelObj,
  });

  FiveModel? fiveModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        fiveModelObj,
      ];
  FiveState copyWith({
    bool? isSelectedSwitch,
    FiveModel? fiveModelObj,
  }) {
    return FiveState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      fiveModelObj: fiveModelObj ?? this.fiveModelObj,
    );
  }
}
