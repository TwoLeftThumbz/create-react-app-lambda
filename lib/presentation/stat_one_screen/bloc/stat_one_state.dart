// ignore_for_file: must_be_immutable

part of 'stat_one_bloc.dart';

/// Represents the state of StatOne in the application.
class StatOneState extends Equatable {
  StatOneState({this.statOneModelObj});

  StatOneModel? statOneModelObj;

  @override
  List<Object?> get props => [
        statOneModelObj,
      ];
  StatOneState copyWith({StatOneModel? statOneModelObj}) {
    return StatOneState(
      statOneModelObj: statOneModelObj ?? this.statOneModelObj,
    );
  }
}
