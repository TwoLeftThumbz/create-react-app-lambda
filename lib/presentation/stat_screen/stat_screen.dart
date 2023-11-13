import 'bloc/stat_bloc.dart';
import 'models/stat_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class StatScreen extends StatelessWidget {
  const StatScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<StatBloc>(
      create: (context) => StatBloc(StatState(
        statModelObj: StatModel(),
      ))
        ..add(StatInitialEvent()),
      child: StatScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<StatBloc, StatState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 8.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 5.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.h,
                      vertical: 15.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder32,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildAppBar(context),
                            Opacity(
                              opacity: 0.5,
                              child: Padding(
                                padding: EdgeInsets.only(top: 114.v),
                                child: Text(
                                  "lbl_0".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12.v),
                        Container(
                          decoration: AppDecoration.outlineOnPrimaryContainer,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 25.v,
                                  bottom: 6.v,
                                ),
                                child: Text(
                                  "lbl_earning".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              Container(
                                height: 4.v,
                                width: 8.h,
                                margin: EdgeInsets.only(
                                  left: 8.h,
                                  top: 30.v,
                                  bottom: 14.v,
                                ),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  top: 25.v,
                                  bottom: 6.v,
                                ),
                                child: Text(
                                  "lbl_spending".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              Container(
                                height: 4.v,
                                width: 8.h,
                                margin: EdgeInsets.only(
                                  left: 8.h,
                                  top: 30.v,
                                  bottom: 14.v,
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.black900.withOpacity(0.2),
                                ),
                              ),
                              Spacer(),
                              CustomElevatedButton(
                                height: 33.v,
                                width: 115.h,
                                text: "lbl_last_30_days".tr,
                                margin: EdgeInsets.only(top: 16.v),
                                buttonStyle: CustomButtonStyles.fillBlack,
                                buttonTextStyle: theme.textTheme.titleSmall!,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 130.v,
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgMiddle,
      ),
      actions: [
        AppbarSubtitle(
          text: "lbl_31_075_50".tr,
          margin: EdgeInsets.only(
            left: 41.h,
            right: 41.h,
            bottom: 111.v,
          ),
        ),
      ],
    );
  }
}
