import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/**
 * Log 拦截器
 * Created by guoshuyu
 * on 2019/3/23.
 */
class LogsInterceptors extends InterceptorsWrapper {
  static List<Map> sHttpResponses = [];
  static List<String> sResponsesHttpUrl = [];

  static List<Map<String, dynamic>> sHttpRequest =[];
  static List<String> sRequestHttpUrl = [];

  static List<Map<String, dynamic>> sHttpError =[];
  static List<String> sHttpErrorUrl = [];

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (kDebugMode) {
      print("请求url：${options.path}");
      print('请求头: ${options.headers}');
      print('params: ${options.queryParameters}');
      if (options.data != null) {
        print('请求参数: ${options.data}');
      }
    }
    try {
      addLogic(sRequestHttpUrl, options.path ?? "");
      var data = options.data ?? <String, dynamic>{};
      var map = {
        "header:": {options.headers},
      };
      if (options.method == "POST") {
        map["data"] = data;
      }
      addLogic(sHttpRequest, map);
    } catch (e) {
      print(e);
    }
     super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response,  ResponseInterceptorHandler handler) async {
    if (kDebugMode) {
      if (response != null) {
        prints('返回参数: $response');
      }
    }
    if (response.data is Map || response.data is List) {
      try {
        var data = <String, dynamic>{};
        data["data"] = response.data;
        addLogic(sResponsesHttpUrl, response.realUri.toString() ?? "");
        addLogic(sHttpResponses, data);
      } catch (e) {
        if (kDebugMode) {
          print(e);
        }
      }
    } else if (response.data is String) {
      try {
        var data = <String, dynamic>{};
        data["data"] = response.data;
        addLogic(sResponsesHttpUrl, response.realUri.toString() ?? "");
        addLogic(sHttpResponses, data);
      } catch (e) {
        print(e);
      }
    } else if (response.data != null) {
      try {
        String data = response.data.toJson();
        addLogic(sResponsesHttpUrl, response.realUri.toString() ?? "");
        addLogic(sHttpResponses, json.decode(data));
      } catch (e) {
        print(e);
      }
    }
    super.onResponse(response,handler); // continue
  }

  @override
  onError(DioError err,ErrorInterceptorHandler handler) async {
    if (!kReleaseMode) {
      print('请求异常: $err');
      print('请求异常信息: ${err.response ?? "null"}' ?? "null");
    }
    try {
      addLogic(sHttpErrorUrl, err.requestOptions.path ?? "null");
      var errors = <String, dynamic>{};
      errors["error"] = err.message;
      addLogic(sHttpError, errors);
    } catch (e) {
      print(e);
    }
     super.onError(err,handler); // continue;
  }

  static addLogic(List list, data) {
    if (list.length > 20) {
      list.removeAt(0);
    }
    list.add(data);
  }

  ///解决控制台日志打印不全
  static void prints(String msg) {
    //信息太长,分段打印
    //因为String的length是字符数量不是字节数量所以为了防止中文字符过多，
    //  把4*1024的MAX字节打印长度改为2001字符数
    int maxStrLength = 2001;
    //大于4000时
    while (msg.length > maxStrLength) {
      print(msg.substring(0, maxStrLength));
      msg = msg.substring(maxStrLength);
    }
    //剩余部分
    print(msg);
  }
}
