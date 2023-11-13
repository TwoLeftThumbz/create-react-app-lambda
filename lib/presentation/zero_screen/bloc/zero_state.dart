// ignore_for_file: must_be_immutable

part of 'zero_bloc.dart';

/// Represents the state of Zero in the application.
class ZeroState extends Equatable {
  ZeroState({this.zeroModelObj});

  ZeroModel? zeroModelObj;

  @override
  List<Object?> get props => [
        zeroModelObj,
      ];
  ZeroState copyWith({ZeroModel? zeroModelObj}) {
    return ZeroState(
      zeroModelObj: zeroModelObj ?? this.zeroModelObj,
    );
  }
}
