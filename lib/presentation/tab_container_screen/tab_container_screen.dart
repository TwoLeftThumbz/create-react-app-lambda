import 'bloc/tab_container_bloc.dart';
import 'models/tab_container_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k54_page/k54_page.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_icon_button.dart';
import 'package:bcc33_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class TabContainerScreen extends StatefulWidget {
  const TabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TabContainerScreenState createState() => TabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TabContainerBloc>(
      create: (context) => TabContainerBloc(TabContainerState(
        tabContainerModelObj: TabContainerModel(),
      ))
        ..add(TabContainerInitialEvent()),
      child: TabContainerScreen(),
    );
  }
}

class TabContainerScreenState extends State<TabContainerScreen>
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
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 20.v),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: BlocSelector<TabContainerBloc, TabContainerState,
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
                  height: 1105.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      K54Page.builder(context),
                      K54Page.builder(context),
                      K54Page.builder(context),
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
      width: 361.h,
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
                Container(
                  width: 101.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 26.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.outlineGray900033.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder20,
                  ),
                  child: Text(
                    "lbl_viewer".tr,
                  ),
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
