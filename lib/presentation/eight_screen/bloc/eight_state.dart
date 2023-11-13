// ignore_for_file: must_be_immutable

part of 'eight_bloc.dart';

/// Represents the state of Eight in the application.
class EightState extends Equatable {
  EightState({this.eightModelObj});

  EightModel? eightModelObj;

  @override
  List<Object?> get props => [
        eightModelObj,
      ];
  EightState copyWith({EightModel? eightModelObj}) {
    return EightState(
      eightModelObj: eightModelObj ?? this.eightModelObj,
    );
  }
}
