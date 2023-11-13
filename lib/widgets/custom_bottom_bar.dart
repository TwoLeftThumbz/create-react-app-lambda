import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgIcons4,
      activeIcon: ImageConstant.imgIcons4,
      type: BottomBarEnum.Icons4,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcons5,
      activeIcon: ImageConstant.imgIcons5,
      type: BottomBarEnum.Icons5,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcons6,
      activeIcon: ImageConstant.imgIcons6,
      type: BottomBarEnum.Icons6,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcons7,
      activeIcon: ImageConstant.imgIcons7,
      type: BottomBarEnum.Icons7,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcons8,
      activeIcon: ImageConstant.imgIcons8,
      type: BottomBarEnum.Icons8,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112.v,
      decoration: BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1.h,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Opacity(
              opacity: 0.5,
              child: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 32.adaptSize,
                width: 32.adaptSize,
                color: appTheme.whiteA700,
              ),
            ),
            activeIcon: Container(
              decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 24.adaptSize,
                width: 24.adaptSize,
                color: appTheme.whiteA700,
                radius: BorderRadius.circular(
                  8.h,
                ),
                margin: EdgeInsets.symmetric(vertical: 12.v),
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Icons4,
  Icons5,
  Icons6,
  Icons7,
  Icons8,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
