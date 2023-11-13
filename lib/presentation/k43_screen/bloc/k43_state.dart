// ignore_for_file: must_be_immutable

part of 'k43_bloc.dart';

/// Represents the state of K43 in the application.
class K43State extends Equatable {
  K43State({
    this.sliderIndex = 0,
    this.k43ModelObj,
  });

  K43Model? k43ModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        k43ModelObj,
      ];
  K43State copyWith({
    int? sliderIndex,
    K43Model? k43ModelObj,
  }) {
    return K43State(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      k43ModelObj: k43ModelObj ?? this.k43ModelObj,
    );
  }
}
