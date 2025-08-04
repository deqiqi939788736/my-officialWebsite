import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class Styles {
  static get superBigSp => 54.sp;

  static get bigSp => 50.sp;

  static get largeSp => 46.sp;

  static get normalSp => 42.sp;

  static get smallSp => 38.sp;

  static get minSp => 34.sp;

  static get logoStyle => TextStyle(
      fontWeight: FontWeight.w600,
      color: Colours.firstTextColor,
      fontSize: bigSp);

  static get loginButtonStyle => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.mainTextColor,
      fontSize: largeSp);

  static get superBigFirstSemiBoldTs => TextStyle(
      fontWeight: FontWeight.w600,
      color: Colours.firstTextColor,
      fontSize: superBigSp);

  //******************************BIG样式 START*****************************/
  static get bigFirstBoldTs => TextStyle(
      fontWeight: FontWeight.bold,
      color: Colours.firstTextColor,
      fontSize: bigSp);

  static get bigFirstTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.firstTextColor,
      fontSize: bigSp);

  static get bigMainSemiBoldTs => TextStyle(
      fontWeight: FontWeight.w600,
      color: Colours.mainTextColor,
      fontSize: bigSp);

  static get bigRedTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.redTextColor,
      fontSize: bigSp);

  //******************************BIG样式 end*****************************/

  //******************************LARGE样式 START*****************************/

  static get largeMainSemiBoldTs => TextStyle(
      fontWeight: FontWeight.w600, color: Colours.mainColor, fontSize: largeSp);

  static get largeMainTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.mainTextColor,
      fontSize: largeSp);

  static get largeFirstTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.firstTextColor,
      fontSize: largeSp);

  static get largeFirstSemiBoldTs => TextStyle(
      fontWeight: FontWeight.w600,
      color: Colours.firstTextColor,
      fontSize: largeSp);

  static get largeWhiteTs => TextStyle(
      fontWeight: FontWeight.normal, color: Colors.white, fontSize: largeSp);

  static get largeWhiteSemiBoldTs => TextStyle(
      fontWeight: FontWeight.w600, color: Colors.white, fontSize: largeSp);

  static get largeRedTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.redTextColor,
      fontSize: largeSp);

  //******************************LARGE样式 END*******************************/

  //******************************NORMAL样式 START*****************************/

  ///主题色的字体样式
  static get normalMainTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.mainTextColor,
      fontSize: normalSp);

  ///主要文本颜色字体样式
  static get normalFirstTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.firstTextColor,
      fontSize: normalSp);

  static get normalFirstMediumTs => TextStyle(
      fontWeight: FontWeight.w500,
      color: Colours.firstTextColor,
      fontSize: normalSp);

  static get normalFirstBoldTs => TextStyle(
      fontWeight: FontWeight.bold,
      color: Colours.firstTextColor,
      fontSize: normalSp);

  ///次级文本颜色字体样式
  static get normalSecondTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.secondTextColor,
      fontSize: normalSp);

  static get normalSecondMediumTs => TextStyle(
      fontWeight: FontWeight.w500,
      color: Colours.secondTextColor,
      fontSize: normalSp);

  ///VIP颜色字体样式
  static get normalVipTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.vipTextColor,
      fontSize: normalSp);

  static get normalVipMediumTs => TextStyle(
      fontWeight: FontWeight.w500,
      color: Colours.vipTextColor,
      fontSize: normalSp);

  // static get normalVipSecondaryTs => TextStyle(
  //     fontWeight: FontWeight.normal,
  //     color: Colours.vipSecondaryTextColor,
  //     fontSize: normalSp);
  //
  // static get normalVipThreeTs => TextStyle(
  //     fontWeight: FontWeight.normal,
  //     color: Colours.vipThreeTextColor,
  //     fontSize: normalSp);
  //
  // static get normalVipThreeMediumTs => TextStyle(
  //     fontWeight: FontWeight.w500,
  //     color: Colours.vipThreeTextColor,
  //     fontSize: normalSp);

  ///白色字体样式
  static get normalWhiteTs => TextStyle(
      fontWeight: FontWeight.normal, color: Colors.white, fontSize: normalSp);

  static get normalSecondaryWhiteTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.secondaryWhite,
      fontSize: normalSp);

  //******************************NORMAL样式 END*******************************/

  //******************************SMALL样式 START*****************************/

  static get smallMainTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.mainTextColor,
      fontSize: smallSp);

  static get smallFirstTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.firstTextColor,
      fontSize: smallSp);

  static get smallSecondTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.secondTextColor,
      fontSize: smallSp);

  static get smallRedTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.redTextColor,
      fontSize: smallSp);

  static get smallTodayTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.signInTodayTextColor,
      fontSize: smallSp);

  static get smallWhiteTs => TextStyle(
      fontWeight: FontWeight.normal, color: Colors.white, fontSize: smallSp);

  static get smallSecondaryWhiteTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.secondaryWhite,
      fontSize: smallSp);

  static get smallVipTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.vipTextColor,
      fontSize: smallSp);

  static get smallVip2Ts => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.vipTextColor2,
      fontSize: smallSp);

  //
  // static get smallThreeVipTs => TextStyle(
  //     fontWeight: FontWeight.normal,
  //     color: Colours.vipThreeTextColor,
  //     fontSize: smallSp);

//******************************SMALL样式 END**********************************/

//******************************MIN样式 START**********************************/

  static get minMainTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.mainTextColor,
      fontSize: minSp);

  static get minFirstTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.firstTextColor,
      fontSize: minSp);

  static get minWhiteTs => TextStyle(
      fontWeight: FontWeight.normal, color: Colors.white, fontSize: minSp);

  static get minVipTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.vipTextColor,
      fontSize: minSp);

  static get minSecondTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.secondTextColor,
      fontSize: minSp);

  static get minSecond15Ts => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.secondTextColor,
      height: 1.5,
      fontSize: minSp);

  static get minRedTs => TextStyle(
      fontWeight: FontWeight.normal,
      color: Colours.redTextColor,
      fontSize: minSp);
//******************************MIN样式 END**********************************/
}
