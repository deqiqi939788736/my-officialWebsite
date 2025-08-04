import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimens.dart';

class Gaps {
  /// 水平间隔
  static  get h2 => SizedBox(width: Dimens.w2);
  static get  h4 => SizedBox(width: Dimens.w4);
  static get  h6 => SizedBox(width: Dimens.w6);
  static get  h8 => SizedBox(width: Dimens.w8);
  static get  h10 => SizedBox(width: Dimens.w10);
  static get  h12 => SizedBox(width: Dimens.w12);
  static get  h20 => SizedBox(width: Dimens.w20);
  static get  h40 => SizedBox(width: Dimens.w40);
  static get  h60 => SizedBox(width: Dimens.w60);
  static get  h100 => SizedBox(width: Dimens.w100);
  static get  h140 => SizedBox(width: Dimens.w140);
  static get  h180 => SizedBox(width: Dimens.w180);
  static get  h400 => SizedBox(width: Dimens.w400);

  /// 垂直间隔
  static get v2 => SizedBox(height: Dimens.h2);
  static get v4 => SizedBox(height: Dimens.h4);
  static get v6 => SizedBox(height: Dimens.h6);
  static get v8 => SizedBox(height: Dimens.h8);
  static get v10 => SizedBox(height: Dimens.h10);
  static get v16 => SizedBox(height: Dimens.h16);
  static get v20 => SizedBox(height: Dimens.h20);
  static get v26 => SizedBox(height: Dimens.h26);
  static get v30 => SizedBox(height: Dimens.h30);
  static get v36 => SizedBox(height: Dimens.h36);
  static get v40 => SizedBox(height: Dimens.h40);
  static get v60 => SizedBox(height: Dimens.h60);
  static get v80 => SizedBox(height: Dimens.h80);
  static get v100 => SizedBox(height: Dimens.h100);
  static get v160 => SizedBox(height: Dimens.h160);

//   Widget line = const SizedBox(
//    height: 0.6,
//    width: double.infinity,
//    child: const DecoratedBox(decoration: BoxDecoration(color: Colours.line)),
//  );

  static get line => Divider();

  static get vLine =>
      Container(height: Gaps.dividerHeight, color: Colours.dividerColor);

  static get hLine =>
      SizedBox(width: Dimens.w1, child: const VerticalDivider());

  static get empty => SizedBox.shrink();

  static  get expanded => Expanded(child: SizedBox());

  static Widget getHGap(double w) {
    return SizedBox(width: w);
  }

  static Widget getVGap(double h) {
    return SizedBox(height: h);
  }


  /// 补充一种空Widget实现 https://github.com/letsar/nil
  /// https://github.com/flutter/flutter/issues/78159
  ///横向分割线
  static get underDivider => BoxDecoration(
      color: Colors.white,
      border: Border(
          bottom:
              BorderSide(width: dividerHeight, color: Colours.dividerColor)));

  ///分割线
  static get dividerHeight => Dimens.h1;

  ///卡片阴影
  static get elevation => 1.0;
}
