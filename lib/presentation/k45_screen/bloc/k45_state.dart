// ignore_for_file: must_be_immutable

part of 'k45_bloc.dart';

/// Represents the state of K45 in the application.
class K45State extends Equatable {
  K45State({
    this.sliderIndex = 0,
    this.isSelectedSwitch = false,
    this.k45ModelObj,
  });

  K45Model? k45ModelObj;

  int sliderIndex;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        sliderIndex,
        isSelectedSwitch,
        k45ModelObj,
      ];
  K45State copyWith({
    int? sliderIndex,
    bool? isSelectedSwitch,
    K45Model? k45ModelObj,
  }) {
    return K45State(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      k45ModelObj: k45ModelObj ?? this.k45ModelObj,
    );
  }
}
