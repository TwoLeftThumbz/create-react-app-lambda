// ignore_for_file: must_be_immutable

part of 'k20_bloc.dart';

/// Represents the state of K20 in the application.
class K20State extends Equatable {
  K20State({this.k20ModelObj});

  K20Model? k20ModelObj;

  @override
  List<Object?> get props => [
        k20ModelObj,
      ];
  K20State copyWith({K20Model? k20ModelObj}) {
    return K20State(
      k20ModelObj: k20ModelObj ?? this.k20ModelObj,
    );
  }
}
