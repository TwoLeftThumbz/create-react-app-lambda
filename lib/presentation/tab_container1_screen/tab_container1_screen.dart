import 'bloc/tab_container1_bloc.dart';
import 'models/tab_container1_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k56_page/k56_page.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_icon_button.dart';
import 'package:bcc33_s_application1/widgets/custom_outlined_button.dart';
import 'package:bcc33_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class TabContainer1Screen extends StatefulWidget {
  const TabContainer1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  TabContainer1ScreenState createState() => TabContainer1ScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TabContainer1Bloc>(
      create: (context) => TabContainer1Bloc(TabContainer1State(
        tabContainer1ModelObj: TabContainer1Model(),
      ))
        ..add(TabContainer1InitialEvent()),
      child: TabContainer1Screen(),
    );
  }
}

class TabContainer1ScreenState extends State<TabContainer1Screen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: BlocSelector<TabContainer1Bloc, TabContainer1State,
                    TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "msg_search_team_member".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 24.v),
              _buildTabview(context),
              SizedBox(
                height: 611.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    K56Page.builder(context),
                    K56Page.builder(context),
                    K56Page.builder(context),
                  ],
                ),
              ),
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
        text: "lbl_team".tr,
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
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 40.v,
      width: 332.h,
      margin: EdgeInsets.only(right: 16.h),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        tabs: [
          Tab(
            child: Text(
              "lbl_admin".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_payer".tr,
            ),
          ),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomOutlinedButton(
                  height: 40.v,
                  width: 101.h,
                  text: "lbl_viewer".tr,
                  buttonStyle: CustomButtonStyles.outlineGrayTL20,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 4.v,
                    bottom: 4.v,
                  ),
                  child: CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    decoration: IconButtonStyleHelper.fillOnPrimary,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIcons40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
