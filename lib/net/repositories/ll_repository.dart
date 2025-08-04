import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

import '../../common/config.dart';
import '../api/api_client.dart';
import 'local_db.dart';

/// 数据仓库
class LLRepository extends GetxService {
  static LLRepository get to => Get.find();

  late ApiClient client;
  LocalDB? _localDB;

  LLRepository(this.client);

  @override
  void onInit() {
    ///初始化本地数据库
    _localDB ??= LocalDB();
    super.onInit();
  }

  ///请求数据模板
  Future<Response> requestData(String url, Map<String, dynamic> params) {
    return client.fire(RequestMethod.GET, url, params: params);
  }

  //登录接口
  Future<Response> login(String userName, String password) {
    var requestMap = {"username": userName, "password": password};
    return client.fire(RequestMethod.POST, "/api/smlogin", params: requestMap);
  }

  //注册用户
  Future<Response> registerUser(
      String userName, String password, String email) {
    var requestMap = {
      "username": userName,
      "password": password,
      "email": email,
    };
    return client.fire(RequestMethod.POST, "/api/smreguser",
        params: requestMap);
  }

  Future<Response> updateUserInfo(Map<String, dynamic> requestMap) {
    return client.fire(RequestMethod.POST, "/my/smuserinfo",
        params: requestMap);
  }

  Future<Response> getUserInfo() {
    return client.fire(RequestMethod.GET, "/my/smuserinfo", params: {});
  }

  //内购信息获取
  Future<Response> getVipInfo({bool isZh = true}) {
    if (isZh) {
      return client.fire(RequestMethod.GET, "/api/chatGetVipInfo", params: {});
    } else {
      return client.fire(RequestMethod.GET, "/api/chatGetEnVipInfo", params: {});
    }
  }

  // Future<bool> saveOcrRecord(Map<String, dynamic> map) {
  //   return _localDB!.saveOcrRecord(map);
  // }

  // Future<dynamic> getOcrRecord() {
  //   return _localDB!.getOcrRecord();
  // }

  Future<Response> getAccessToken() {
    Options options = Options();
    options.headers = {
      "Content-Type": "application/json",
      "Accept": "application/json"
    };
    return client.fire(RequestMethod.POST, "/oauth/2.0/token",
        baseUrl: "https://aip.baidubce.com",
        options: options,
        isEncrypt: false,
        isBodyParams: false,
        params: {
          "client_id": Config.CLIENT_ID,
          "client_secret": Config.CLIENT_SECRET,
          "grant_type": "client_credentials"
        });
  }

  Future<Response> drivingCardOcr(String accessToken, String base64File) {
    Options options = Options();
    options.headers = {
      "Content-Type": "application/x-www-form-urlencoded",
      "Accept": "application/json"
    };
    return client.fire(RequestMethod.POST,
        "/rest/2.0/ocr/v1/vehicle_license?access_token=$accessToken",
        baseUrl: "https://aip.baidubce.com",
        options: options,
        isEncrypt: false,
        params: {
          "image": base64File,
          "detect_direction": "true",
          "unified": "true",
          "vehicle_license_side": "front", //识别背面back
        });
  }

  Future<Response> idCardOcr(String accessToken, String base64File) {
    Options options = Options();
    options.headers = {
      "Content-Type": "application/x-www-form-urlencoded",
      "Accept": "application/json"
    };
    return client.fire(
        RequestMethod.POST, "/rest/2.0/ocr/v1/idcard?access_token=$accessToken",
        baseUrl: "https://aip.baidubce.com",
        options: options,
        isEncrypt: false,
        params: {
          "image": base64File,
          "id_card_side": "front",
        });
  }
}
