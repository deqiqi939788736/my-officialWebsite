class Config {
  static const String BASE_URL = 'https://www.lghz.cc';

  /// 当前版本的数据库名字
  static const DBNAME = "image_ocr.db";

  /// 上一个版本的数据库名字
  static const LAST_VERSION_DBNAME = "";

  ///会员协议(中文)
  static const VIP_PROTOCOL_ZH = "https://docs.qq.com/doc/DQmpMQkFmTUVJT2NI";

  ///会员协议(英文)
  static const VIP_PROTOCOL_EN = "https://docs.qq.com/doc/DQmFNSnBzc2pLZlRN";

  ///用户协议
  static const PRIVACY_AGREEMENT_ZH =
      "https://docs.qq.com/doc/DQkZBRVlFTUptUGxJ";

  static const PRIVACY_AGREEMENT_EN =
      "https://docs.qq.com/doc/DQnNNU1lhbU9GU3hq";

  static const CLIENT_ID = "";
  static const CLIENT_SECRET = "";

  ///每月最大识别次数
  static const MAX_OCR_NUM = 100;
  static const URL_WINDOWS = "https://www.lghz.cc/downloads/1.0/setup.exe";
  static const URL_ANDROID = "https://www.pgyer.com/iqM4";
}
