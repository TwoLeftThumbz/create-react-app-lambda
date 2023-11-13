import '../k47_page/widgets/bigctas2_item_widget.dart';
import '../k47_page/widgets/icons2_item_widget.dart';
import 'bloc/k47_bloc.dart';
import 'models/bigctas2_item_model.dart';
import 'models/icons2_item_model.dart';
import 'models/k47_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class K47Page extends StatelessWidget {
  const K47Page({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K47Bloc>(
      create: (context) => K47Bloc(K47State(
        k47ModelObj: K47Model(),
      ))
        ..add(K47InitialEvent()),
      child: K47Page(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 20.v,
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(23.h),
                decoration: AppDecoration.outlineOnPrimary3.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder32,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: AppDecoration.outlineBlueGray,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_recent_beneficiaries".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 15.v),
                          _buildBigCTAS(context),
                          SizedBox(height: 24.v),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_available_funds".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildIcons(context),
                  ],
                ),
              ),
              SizedBox(height: 15.v),
              Opacity(
                opacity: 0.5,
                child: Container(
                  width: 316.h,
                  margin: EdgeInsets.symmetric(horizontal: 22.h),
                  child: Text(
                    "msg_lorem_ipsum_dolor3".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIcons1,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_manage".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgAvatarsGray900,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 12.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBigCTAS(BuildContext context) {
    return SizedBox(
      height: 144.v,
      child: BlocSelector<K47Bloc, K47State, K47Model?>(
        selector: (state) => state.k47ModelObj,
        builder: (context, k47ModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: k47ModelObj?.bigctas2ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Bigctas2ItemModel model =
                  k47ModelObj?.bigctas2ItemList[index] ?? Bigctas2ItemModel();
              return Bigctas2ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildIcons(BuildContext context) {
    return BlocSelector<K47Bloc, K47State, K47Model?>(
      selector: (state) => state.k47ModelObj,
      builder: (context, k47ModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: k47ModelObj?.icons2ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Icons2ItemModel model =
                k47ModelObj?.icons2ItemList[index] ?? Icons2ItemModel();
            return Icons2ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
