import 'bloc/one_bloc.dart';
import 'models/one_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OneBloc>(
      create: (context) => OneBloc(OneState(
        oneModelObj: OneModel(),
      ))
        ..add(OneInitialEvent()),
      child: OneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<OneBloc, OneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgAbstractpatternFullscreen,
                height: 690.v,
                width: 345.h,
                radius: BorderRadius.circular(
                  32.h,
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
        );
      },
    );
  }
}
