// ignore_for_file: must_be_immutable

part of 'k60_bloc.dart';

/// Represents the state of K60 in the application.
class K60State extends Equatable {
  K60State({
    this.emailController,
    this.k60ModelObj,
  });

  TextEditingController? emailController;

  K60Model? k60ModelObj;

  @override
  List<Object?> get props => [
        emailController,
        k60ModelObj,
      ];
  K60State copyWith({
    TextEditingController? emailController,
    K60Model? k60ModelObj,
  }) {
    return K60State(
      emailController: emailController ?? this.emailController,
      k60ModelObj: k60ModelObj ?? this.k60ModelObj,
    );
  }
}
