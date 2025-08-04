import 'package:get/get.dart';

import '../ui/main_page.dart';

enum PageName {
  main,
}

class Routers {
  static List<GetPage<dynamic>> pages() {
    List<GetPage<dynamic>> pages = [
      GetPage(
        name: "/${PageName.main}",
        page: () => MainPage(),
      ),
    ];
    return pages;
  }
}
