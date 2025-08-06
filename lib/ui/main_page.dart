import 'package:flustars_flutter3/flustars_flutter3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:qr_flutter/qr_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_official_website/common/config.dart';
import 'package:web_official_website/common/res/asset_images.dart';
import 'package:web_official_website/widgets/svg_image.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xff85c4e3),
              Color(0xff6cbce5),
              Color(0xff04a2ee)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          ),
          Row(
            children: [
              buildLeft(),
              Padding(
                padding: EdgeInsets.only(left: 200.w),
                child: buildRight(),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildLeft() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(DateUtil.formatDate(DateTime.now(), format: "yyyy"),
            style: TextStyle(
                color: Color(0xff71b9e0),
                fontSize: 340.sp,
                fontWeight: FontWeight.bold)),
        Padding(
            padding: EdgeInsets.only(left: 100.w),
            child: Text("驾校",
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 60.sp,
                    fontWeight: FontWeight.bold))),
        SizedBox(height: 10.h),
        Container(
          width: 36.sp,
          height: 8.h,
          margin: EdgeInsets.only(left: 100.w),
          color: Colors.white,
        ),
        SizedBox(height: 30.h),
        Padding(
            padding: EdgeInsets.only(left: 100.w),
            child: Text("Ios,  Android\nMacos, Window同步上线\n随时随地轻松刷题",
                style: TextStyle(
                    color: Color(0xffe3f6fe),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold))),
        Expanded(
            child: Container(
          width: 700.w,
          margin: EdgeInsets.only(left: 50.w),
          child: LayoutBuilder(
            builder: (context, boxs) {
              return Image.asset(
                AssetImages.car,
                width: boxs.maxWidth,
                height: boxs.maxHeight,
                fit: BoxFit.fitWidth,
              );
            },
          ),
        ))
      ],
    );
  }

  Widget buildRight() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: SizedBox()),
        Text("驾校",
            style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 60.sp,
                fontWeight: FontWeight.bold)),
        Text("考驾照——刷题就用驾校APP",
            style: TextStyle(
                color: Color(0xffe3f6fe),
                fontSize: 30.sp,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 40.h),
        Row(
          children: [
            Column(
              children: [
                getButton(
                    name: "Mac版       ",
                    icon: AssetImages.mac,
                    onClick: () async {
                      String url = "https://apps.apple.com/cn/app/id6450564625";
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    }),
                SizedBox(height: 40.h),
                getButton(
                    name: "Window版",
                    icon: AssetImages.windows,
                    onClick: () async {
                      if (await canLaunchUrl(Uri.parse(Config.URL_WINDOWS))) {
                        launchUrl(Uri.parse(Config.URL_WINDOWS));
                      }
                    }),
                SizedBox(height: 40.h),
                getButton(
                    name: "Android版",
                    icon: AssetImages.android,
                    onClick: () async {
                      if (await canLaunchUrl(Uri.parse(Config.URL_ANDROID))) {
                        launchUrl(Uri.parse(Config.URL_ANDROID));
                      }
                    }),
              ],
            ),
            SizedBox(width: 100.w),
            Column(
              children: [
                SizedBox(height: 20.h),
                Image.asset(AssetImages.androidQRCode,
                    width: 110.w, height: 110.w),
                SizedBox(height: 10.h),
                Text(
                  "扫 码 下 载 Android",
                  style: TextStyle(color: Colors.white, fontSize: 14.sp),
                ),
              ],
            )
          ],
        ),
        Expanded(child: SizedBox()),
        Text(
          "浙ICP备2022019647号",
          style: TextStyle(fontSize: 14.sp, color: Colors.black),
        ),
        SizedBox(height: 10.h),
      ],
    );
  }

  getButton({String? name, String? icon, var onClick}) {
    return Container(
      child: Row(
        children: [
          TextButton.icon(
              onPressed: () {
                if (onClick != null) {
                  onClick();
                }
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60.w),
                    side: BorderSide(color: Colors.white, width: 1.w))),
                padding: MaterialStateProperty.all(
                    EdgeInsets.fromLTRB(40.w, 16.w, 40.w, 16.w)),
              ),
              icon: SvgImage(icon ?? "", width: 36.w, height: 36.w),
              // Icon(icon ?? Icons.android, color: Colors.white, size: 36.w),
              label: Text(
                name ?? "",
                style: TextStyle(color: Colors.white, fontSize: 24.sp),
              ))
        ],
      ),
    );
  }
}
