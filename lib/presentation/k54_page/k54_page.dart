import 'bloc/k54_bloc.dart';
import 'models/k54_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/core/utils/validation_functions.dart';
import 'package:bcc33_s_application1/widgets/custom_drop_down.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:bcc33_s_application1/widgets/custom_outlined_button.dart';
import 'package:bcc33_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class K54Page extends StatefulWidget {
  const K54Page({Key? key})
      : super(
          key: key,
        );

  @override
  K54PageState createState() => K54PageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<K54Bloc>(
      create: (context) => K54Bloc(K54State(
        k54ModelObj: K54Model(),
      ))
        ..add(K54InitialEvent()),
      child: K54Page(),
    );
  }
}

class K54PageState extends State<K54Page>
    with AutomaticKeepAliveClientMixin<K54Page> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  decoration: AppDecoration.fillOnPrimary1.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder32,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildCellGeneral(context),
                      Container(
                        padding: EdgeInsets.only(
                          top: 24.v,
                          bottom: 23.v,
                        ),
                        decoration: AppDecoration.outlineOnPrimaryContainer1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_email_address2".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 7.v),
                            _buildEmail(context),
                            SizedBox(height: 24.v),
                            Text(
                              "lbl_role".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 7.v),
                            BlocSelector<K54Bloc, K54State, K54Model?>(
                              selector: (state) => state.k54ModelObj,
                              builder: (context, k54ModelObj) {
                                return CustomDropDown(
                                  icon: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 12.v, 16.h, 12.v),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        8.h,
                                      ),
                                    ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowdown,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                    ),
                                  ),
                                  hintText: "lbl_payer".tr,
                                  items: k54ModelObj?.dropdownItemList ?? [],
                                  contentPadding: EdgeInsets.only(
                                    left: 16.h,
                                    top: 16.v,
                                    bottom: 16.v,
                                  ),
                                  borderDecoration:
                                      DropDownStyleHelper.fillOnPrimary,
                                  fillColor: theme.colorScheme.onPrimary
                                      .withOpacity(1),
                                  onChanged: (value) {
                                    context
                                        .read<K54Bloc>()
                                        .add(ChangeDropDownEvent(value: value));
                                  },
                                );
                              },
                            ),
                            SizedBox(height: 7.v),
                            Container(
                              width: 296.h,
                              margin: EdgeInsets.only(right: 17.h),
                              child: Text(
                                "msg_payer_lorem_ipsum".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            SizedBox(height: 21.v),
                            _buildSend(context),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 24.v,
                          bottom: 23.v,
                        ),
                        decoration: AppDecoration.outlineOnPrimaryContainer1,
                        child: Row(
                          children: [
                            _buildMY(context),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 7.v,
                                bottom: 7.v,
                              ),
                              child: _buildLabels(
                                context,
                                userName: "lbl_master_yoda".tr,
                                userRole: "lbl_admin".tr,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 24.v,
                          bottom: 23.v,
                        ),
                        decoration: AppDecoration.outlineOnPrimaryContainer1,
                        child: Row(
                          children: [
                            _buildMW(context),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 7.v,
                                bottom: 7.v,
                              ),
                              child: _buildLabels(
                                context,
                                userName: "lbl_mace_windu".tr,
                                userRole: "lbl_admin".tr,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 24.v,
                          bottom: 23.v,
                        ),
                        decoration: AppDecoration.outlineOnPrimaryContainer1,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildLA(context),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 8.v,
                                bottom: 3.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_leia_amidala".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  SizedBox(height: 1.v),
                                  Text(
                                    "lbl_payer".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  SizedBox(height: 17.v),
                                  Container(
                                    margin: EdgeInsets.only(left: 16.h),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder8,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgIcons14,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: Text(
                                            "lbl_reveiew".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 19.v),
                                  Text(
                                    "msg_has_initiated_a".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 24.v,
                          bottom: 23.v,
                        ),
                        decoration: AppDecoration.outlineOnPrimaryContainer1,
                        child: Row(
                          children: [
                            _buildDD(context),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 9.v,
                                bottom: 4.v,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "lbl_din_djarin".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  Text(
                                    "lbl_employee".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 24.v,
                          bottom: 23.v,
                        ),
                        decoration: AppDecoration.outlineOnPrimaryContainer1,
                        child: Row(
                          children: [
                            _buildDG(context),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 9.v,
                                bottom: 6.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_din_grogu".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  Text(
                                    "lbl_viewer".tr,
                                    style: theme.textTheme.titleSmall,
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCellGeneral(BuildContext context) {
    return BlocSelector<K54Bloc, K54State, TextEditingController?>(
      selector: (state) => state.cellGeneralController,
      builder: (context, cellGeneralController) {
        return CustomTextFormField(
          controller: cellGeneralController,
          hintText: "lbl_new_team_member".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(11.h, 30.v, 27.h, 30.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgIcons38,
              height: 27.v,
              width: 33.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 96.v,
          ),
          contentPadding: EdgeInsets.only(
            top: 39.v,
            right: 30.h,
            bottom: 39.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer1,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<K54Bloc, K54State, TextEditingController?>(
      selector: (state) => state.emailController,
      builder: (context, emailController) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "msg_juandoe_email_com".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSend(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_send".tr.toUpperCase(),
    );
  }

  /// Section Widget
  Widget _buildMY(BuildContext context) {
    return CustomOutlinedButton(
      width: 56.h,
      text: "lbl_my".tr,
    );
  }

  /// Section Widget
  Widget _buildMW(BuildContext context) {
    return CustomOutlinedButton(
      width: 56.h,
      text: "lbl_mw".tr,
    );
  }

  /// Section Widget
  Widget _buildLA(BuildContext context) {
    return CustomOutlinedButton(
      width: 56.h,
      text: "lbl_la".tr,
      margin: EdgeInsets.only(bottom: 71.v),
    );
  }

  /// Section Widget
  Widget _buildDD(BuildContext context) {
    return CustomOutlinedButton(
      width: 56.h,
      text: "lbl_dd".tr,
    );
  }

  /// Section Widget
  Widget _buildDG(BuildContext context) {
    return CustomOutlinedButton(
      width: 56.h,
      text: "lbl_dg".tr,
    );
  }

  /// Common widget
  Widget _buildLabels(
    BuildContext context, {
    required String userName,
    required String userRole,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userName,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
        Text(
          userRole,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
      ],
    );
  }
}
