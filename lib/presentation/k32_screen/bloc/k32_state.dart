// ignore_for_file: must_be_immutable

part of 'k32_bloc.dart';

/// Represents the state of K32 in the application.
class K32State extends Equatable {
  K32State({
    this.gbp = false,
    this.k32ModelObj,
  });

  K32Model? k32ModelObj;

  bool gbp;

  @override
  List<Object?> get props => [
        gbp,
        k32ModelObj,
      ];
  K32State copyWith({
    bool? gbp,
    K32Model? k32ModelObj,
  }) {
    return K32State(
      gbp: gbp ?? this.gbp,
      k32ModelObj: k32ModelObj ?? this.k32ModelObj,
    );
  }
}
