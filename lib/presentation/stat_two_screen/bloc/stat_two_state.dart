// ignore_for_file: must_be_immutable

part of 'stat_two_bloc.dart';

/// Represents the state of StatTwo in the application.
class StatTwoState extends Equatable {
  StatTwoState({this.statTwoModelObj});

  StatTwoModel? statTwoModelObj;

  @override
  List<Object?> get props => [
        statTwoModelObj,
      ];
  StatTwoState copyWith({StatTwoModel? statTwoModelObj}) {
    return StatTwoState(
      statTwoModelObj: statTwoModelObj ?? this.statTwoModelObj,
    );
  }
}
