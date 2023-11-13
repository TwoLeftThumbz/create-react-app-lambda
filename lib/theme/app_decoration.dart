import 'package:flutter/material.dart';
import 'package:bcc33_s_application1/core/app_export.dart';

class AppDecoration {
  // B decorations
  static BoxDecoration get bGDark => BoxDecoration(
        color: appTheme.gray90004,
      );

  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.2),
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple800,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray900,
      );
  static BoxDecoration get fillGray90002 => BoxDecoration(
        color: appTheme.gray90002,
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue900,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillOnPrimary1 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillOnSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink800,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90026,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              24,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90026 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.2),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90026.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900261 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90026,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              24,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray900,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray900 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.2),
        border: Border.all(
          color: appTheme.blueGray900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray90001 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray90001,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray9001 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray900,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineDeepPurple => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.deepPurple50,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineDeeppurple50 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.2),
        border: Border.all(
          color: appTheme.deepPurple50,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray90003,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray3001 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.2),
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray3002 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray3003 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray90003 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.gray90003,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray900031 => BoxDecoration();
  static BoxDecoration get outlineGray900032 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray90003,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray900033 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray90003,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineGray90004 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray90004,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray900041 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.2),
        border: Border.all(
          color: appTheme.gray90004,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.onErrorContainer,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        color: appTheme.black900.withOpacity(0.2),
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.onPrimaryContainer,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer1 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.onPrimaryContainer,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer2 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90026.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              24,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimaryContainer3 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineOnPrimary1 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: theme.colorScheme.onPrimary,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90026,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              24,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary2 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.onPrimary,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineOnPrimary3 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: theme.colorScheme.onPrimary,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90026,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              24,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePink => BoxDecoration(
        border: Border.all(
          color: appTheme.pink800,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.deepPurple800,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.primary,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlinePrimary3 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.2),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary4 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.2),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary5 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary6 => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary7 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get circleBorder8 => BorderRadius.circular(
        8.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder32 => BorderRadius.circular(
        32.h,
      );
  static BorderRadius get roundedBorder40 => BorderRadius.circular(
        40.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    