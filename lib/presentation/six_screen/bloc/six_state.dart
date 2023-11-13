// ignore_for_file: must_be_immutable

part of 'six_bloc.dart';

/// Represents the state of Six in the application.
class SixState extends Equatable {
  SixState({this.sixModelObj});

  SixModel? sixModelObj;

  @override
  List<Object?> get props => [
        sixModelObj,
      ];
  SixState copyWith({SixModel? sixModelObj}) {
    return SixState(
      sixModelObj: sixModelObj ?? this.sixModelObj,
    );
  }
}
