import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'asset_images.dart';

class CommonUI {
  static final boxdecoration = BoxDecoration(
      color: Color(0xff363636),
      borderRadius: BorderRadius.all(Radius.circular(60.r)),
      boxShadow: [
        BoxShadow(
          color: Color(0xff6F747B).withOpacity(0.06),
          blurRadius: 64.r,
          spreadRadius: (64 * 0.14).r,
          offset: Offset(0, 12.h),
        )
      ]);

  static TextStyle textStyle(double fontSize, int color, FontWeight fontWeight,
      {List<Shadow>? shadows}) {
    return TextStyle(
      fontSize: fontSize.sp,
      color: Color(color),
      fontWeight: fontWeight,
      shadows: shadows,
    );
  }

  static Widget subtitle(String? subtitle) {
    return subtitle != null
        ? Container(
            width: 350.w,
            child: Text(
              subtitle,
              maxLines: 1,
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
              style: textStyle(36, 0xff484848, FontWeight.normal),
            ),
          )
        : CupertinoActivityIndicator(
            radius: 22.r,
          );
  }
  static Widget commonList(
    List<dynamic> list,
    GestureTapCallback? onTap(int index),
    Widget child(int index),
  ) {
    return Container(
      decoration: boxdecoration,
      child: Column(
        children: List.generate(
          list.length,
          (index) => Material(
            borderRadius: BorderRadius.only(
              topLeft: index == 0 ? Radius.circular(60.r) : Radius.zero,
              topRight: index == 0 ? Radius.circular(60.r) : Radius.zero,
              bottomLeft: index == list.length - 1
                  ? Radius.circular(60.r)
                  : Radius.zero,
              bottomRight: index == list.length - 1
                  ? Radius.circular(60.r)
                  : Radius.zero,
            ),
            color: Colors.white,
            child: InkWell(
              borderRadius: BorderRadius.only(
                topLeft: index == 0 ? Radius.circular(60.r) : Radius.zero,
                topRight: index == 0 ? Radius.circular(60.r) : Radius.zero,
                bottomLeft: index == list.length - 1
                    ? Radius.circular(60.r)
                    : Radius.zero,
                bottomRight: index == list.length - 1
                    ? Radius.circular(60.r)
                    : Radius.zero,
              ),
              onTap: onTap(index),
              child: child(index),
            ),
          ),
        ),
      ),
    );
  }

  static Widget listTitle({
    int? index,
    int? listLength,
    String? icon,
    String? title,
    String? subTitle,
    String? subheading,
    String? image,
    bool? isSwitch,
    Function? switchFun,
    Color? color,
    double? width = 90,
    double? height = 90,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: index == 0 ? Radius.circular(60.r) : Radius.zero,
          topRight: index == 0 ? Radius.circular(60.r) : Radius.zero,
          bottomLeft:
              index == listLength! - 1 ? Radius.circular(60.r) : Radius.zero,
          bottomRight:
              index == listLength - 1 ? Radius.circular(60.r) : Radius.zero,
        ),
      ),
      padding: EdgeInsets.only(left: 60.w, right: 60.w, top: 50.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  icon != null
                      ? Padding(
                          padding: EdgeInsets.only(right: 34.w),
                          child: Image.asset(
                            icon,
                            width: width!.w,
                            height: height!.h,
                            color: color,
                          ),
                        )
                      : SizedBox(),
                  Text(
                    title!,
                    style: textStyle(40, 0xff222222, FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  subTitle != null
                      ? subheading != null
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                subtitle(subTitle),
                                Padding(
                                  padding: EdgeInsets.only(top: 20.h),
                                  child: Text(
                                    subheading,
                                    maxLines: 1,
                                    textAlign: TextAlign.right,
                                    overflow: TextOverflow.ellipsis,
                                    style: textStyle(
                                        36, 0xff484848, FontWeight.normal),
                                  ),
                                )
                              ],
                            )
                          : subtitle(subTitle)
                      :SizedBox(),
                      Icon(Icons.chevron_right, color: Color(0xff999999)),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.h),
            child: Divider(
              color: index == listLength - 1 ? Colors.white : Color(0xffe2e5eb),
              height: 1.5.h,
            ),
          )
        ],
      ),
    );
  }

  static Widget checkListTile(
    String title,
    bool isChecked,
    int index,
    int listLength,
  ) {
    return Padding(
      padding: EdgeInsets.only(left: 60.w, right: 60.w, top: 50.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: CommonUI.textStyle(40, 0xff222222, FontWeight.bold),
              ),
              Icon(
                Icons.check_circle,
                size: 70.sp,
                color: isChecked ? Color(0xff1c88ff) : Color(0xffcdcdcd),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.h),
            child: Divider(
              color: index == listLength - 1 ? Colors.white : Color(0xffe2e5eb),
              height: 1.5.h,
            ),
          )
        ],
      ),
    );
  }
}
