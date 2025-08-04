import 'package:get/get.dart';

import 'en_message.dart';
import 'zh_message.dart';

///使用Get配置语言环境
///使用Get.updateLocale(locale);即可更新
class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "zh_CN": ZHMessage().toJson(),
        "en_US": ENMessage().toJson(),
      };
}
