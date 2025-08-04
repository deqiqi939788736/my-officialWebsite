// import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

// import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
// import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
// import 'package:dio_cookie_manager/dio_cookie_manager.dart';

import '../aesTool/aesHsahTool.dart';
import 'api_intercepter.dart';
import 'api_config.dart';
import 'dart:convert';

enum RequestMethod { GET, POST, DELETE, PUT }

extension RequestMethodExtension on RequestMethod {
  String get value => ["get", "post", "delete", "put"][index];
}

/// api 客户端
class ApiClient {
  late ApiConfig config;

  late Dio _dio;

  ApiClient(this.config) {
    initDio();
  }

  //用于取消请求
  CancelToken cancelToken = CancelToken();

  /// dio配置
  void initDio() {
    var options = BaseOptions();
    options.baseUrl = config.baseUrl;
    options.headers = config.headers;
    options.receiveTimeout = config.receiveTimeout;
    options.connectTimeout = config.connectTimeout;
    options.sendTimeout = config.sendTimeout;

    _dio = Dio(options);

    //cookie 配置
    // if (config.cookiesPath?.isNotEmpty ?? false) {
    //   _dio.interceptors.add(CookieManager(
    //       PersistCookieJar(storage: FileStorage(config.cookiesPath))));
    // }

    //缓存配置
    // if (config.cachePath?.isNotEmpty ?? false) {
    //   CacheStore cacheStore = HiveCacheStore(config.cachePath);
    //   //forceCache 可以忽略服务器的缓存配置
    //   //maxStale 缓存失效时间
    //   final cacheOptions = CacheOptions(
    //       store: cacheStore,
    //       policy: CachePolicy.forceCache,
    //       maxStale: const Duration(seconds: 5 * 60));
    //   _dio.interceptors.add(DioCacheInterceptor(options: cacheOptions));
    // }

    // 增加app 拦截器用于业务处理
    _dio.interceptors.add(ApiInterceptor());

    //日志配置
    if (kDebugMode && config.showLog) {
      _dio.interceptors
          .add(LogInterceptor(requestBody: true, responseHeader: false));
    }
  }

  Future<Response> fire(RequestMethod method, String url,
      {Map<String, dynamic>? params,
      Options? options,
      CancelToken? cancelToken,
      String? baseUrl,
      bool isEncrypt = true,
      isBodyParams = true}) async {
    late Response response;
    options ??= Options();
    options.method = method.value;
    var requestParams;
    if (isEncrypt) {
      requestParams = {"data": JhEncryptUtils.aesEncrypt(json.encode(params))};
    } else {
      requestParams = params;
    }
    _dio.options.baseUrl = baseUrl ?? config.baseUrl;
    response = await _dio.request(url,
        queryParameters: isBodyParams ? null : requestParams,
        data: isBodyParams ? requestParams : null,
        options: options,
        cancelToken: cancelToken ?? this.cancelToken);
    return response;
  }
}
