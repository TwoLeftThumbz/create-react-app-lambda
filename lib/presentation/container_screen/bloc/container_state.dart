// ignore_for_file: must_be_immutable

part of 'container_bloc.dart';

/// Represents the state of Container in the application.
class ContainerState extends Equatable {
  ContainerState({this.containerModelObj});

  ContainerModel? containerModelObj;

  @override
  List<Object?> get props => [
        containerModelObj,
      ];
  ContainerState copyWith({ContainerModel? containerModelObj}) {
    return ContainerState(
      containerModelObj: containerModelObj ?? this.containerModelObj,
    );
  }
}
