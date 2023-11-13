// ignore_for_file: must_be_immutable

part of 'k44_bloc.dart';

/// Represents the state of K44 in the application.
class K44State extends Equatable {
  K44State({
    this.sliderIndex = 0,
    this.k44ModelObj,
  });

  K44Model? k44ModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        k44ModelObj,
      ];
  K44State copyWith({
    int? sliderIndex,
    K44Model? k44ModelObj,
  }) {
    return K44State(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      k44ModelObj: k44ModelObj ?? this.k44ModelObj,
    );
  }
}
