// ignore_for_file: must_be_immutable

part of 'k14_bloc.dart';

/// Represents the state of K14 in the application.
class K14State extends Equatable {
  K14State({this.k14ModelObj});

  K14Model? k14ModelObj;

  @override
  List<Object?> get props => [
        k14ModelObj,
      ];
  K14State copyWith({K14Model? k14ModelObj}) {
    return K14State(
      k14ModelObj: k14ModelObj ?? this.k14ModelObj,
    );
  }
}
