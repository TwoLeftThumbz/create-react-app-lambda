import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Zero".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.zeroScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.oneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.twoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.threeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Four".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Five".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Six".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.sixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Seven".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.sevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Eight".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.eightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Nine".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.nineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Stat Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.statTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Stat One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.statOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Stat".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.statScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0010".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k13Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0011".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k14Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0012".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k15Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0013".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k16Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0014".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k17Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0015".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k18Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0022".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k25Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0023".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k26Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0024".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k27Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0026".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k29Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0027".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k30Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0028".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k31Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0029".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k32Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0030".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k33Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0031".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k34Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0032".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k35Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0033".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k36Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0034".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k37Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0035".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k38Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0036".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k39Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0037".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k40Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0038".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k41Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0039".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k42Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0040".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k43Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0041".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k44Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0042".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k45Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0043".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k46Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0044 - Container".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.containerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0045".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k49Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0046".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k50Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0047".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k51Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0048".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k52Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0049".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k53Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0050 - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.tabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0051 - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.tabContainer1Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0052".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k58Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0053".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k59Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0054".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k60Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0055".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k61Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "0056".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.k62Screen),
                            ),
                          ],
                        ),
                      ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
