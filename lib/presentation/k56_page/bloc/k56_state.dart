// ignore_for_file: must_be_immutable

part of 'k56_bloc.dart';

/// Represents the state of K56 in the application.
class K56State extends Equatable {
  K56State({this.k56ModelObj});

  K56Model? k56ModelObj;

  @override
  List<Object?> get props => [
        k56ModelObj,
      ];
  K56State copyWith({K56Model? k56ModelObj}) {
    return K56State(
      k56ModelObj: k56ModelObj ?? this.k56ModelObj,
    );
  }
}
