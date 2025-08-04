import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_proxy/shelf_proxy.dart';
//前端页面访问本地域名
const String host = 'localhost';
//前端页面访问本地端口号
const int port= 8080;
//proxy域名或IP地址
const String TargetUrl = 'https://download.jiakaobaodian.com';

Future main() async {
  var server = await shelf_io.serve(
    proxyHandler(TargetUrl),
    host,
    port,
  );
  // 添加跨域头
  server.defaultResponseHeaders.add('Access-Control-Allow-Origin', '*');
  server.defaultResponseHeaders.add('Access-Control-Allow-Credentials', true);

  print('Serving is running at http://${server.address.host}:${server.port}');
}