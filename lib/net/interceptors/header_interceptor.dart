import 'package:dio/dio.dart';

/**
 * header拦截器
 */
class HeaderInterceptors extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    ///超时
    options.connectTimeout = 30000;
    if (options.headers.containsKey("username")) {
      var userName = options.headers["username"];
      options.headers["username"] = Uri.encodeComponent(userName);
    }
    //加入公参
//    if (ShxhUser.getInstance().shxhUserModel != null) {
//      // ignore: unnecessary_statements
//      options.path = options.path +
//          (options.path.contains("?") ? "&" : "?") +
//          "shxhUser=" +
//          ShxhUser.getInstance().shxhUserModel.toString();
//    }
    super.onRequest(options, handler);
  }
}
