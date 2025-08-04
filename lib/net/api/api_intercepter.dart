import 'package:dio/dio.dart';

// import '../../ui/login/state/user_state.dart';

/// app 拦截器 统一处理请求逻辑
class ApiInterceptor extends Interceptor {
  /// 请求拦截
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // 增加请求头
//    String? userToken = await SpUtil.getData<String>("token");
//     debugPrint("token-->${UserState.to.userToken}");

    // options.headers.addAll({"Authorization": UserState.to.userToken ?? ''});
    super.onRequest(options, handler);
  }
}
