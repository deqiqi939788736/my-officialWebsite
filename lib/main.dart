import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'common/res/colors.dart';
import 'router/routers.dart';
import 'state/states.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return    ScreenUtilInit(
        designSize: _getDesignSize(),
        builder: (context, child) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // scrollBehavior: const CustomOverScrollBehavior(),
          title: '驾考宝典助手',
          // builder: BotToastInit(),
          // navigatorObservers: [BotToastNavigatorObserver()],
          initialBinding: States.initialBinding,
          // 路由管理
          initialRoute: PageName.main.toString(),
          getPages: Routers.pages(),
          // translations: Messages(),
          // supportedLocales: [Locale('zh', 'CH')],
          // locale: Get.deviceLocale,
          //国际化支持-备用语言
          // fallbackLocale: Locale('en', 'US'),
          defaultTransition: Transition.fade,
          theme: ThemeData(

            // primary color schema
            // primarySwatch: Colors.green,

            // custom icon theme
            // iconTheme: IconThemeData(color: Colors.lightGreen),
              primaryColor: Colours.mainColor),
        ));
  }
  _getDesignSize() {
    return GetPlatform.isMobile ? Size(1080, 1920) : Size(1920, 1080);
  }
}