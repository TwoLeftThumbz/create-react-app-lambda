// ignore_for_file: must_be_immutable

part of 'stat_bloc.dart';

/// Represents the state of Stat in the application.
class StatState extends Equatable {
  StatState({this.statModelObj});

  StatModel? statModelObj;

  @override
  List<Object?> get props => [
        statModelObj,
      ];
  StatState copyWith({StatModel? statModelObj}) {
    return StatState(
      statModelObj: statModelObj ?? this.statModelObj,
    );
  }
}
