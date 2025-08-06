# web

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

//打包发布到腾讯云cloudbase
链接:https://tcb.cloud.tencent.com/dev?envId=cloud1-0graeoc3d4e56737#/platform-run/service/detail?serverName=jiaxiao&tabId=dev&envId=cloud1-0graeoc3d4e56737
1.打包 flutter build web --release
2.在build/web下建文件Dockerfile（不要后缀名） 文件里的内容如下：
FROM nginx:alpine
COPY . /usr/share/nginx/html
3.在build/web下建文件cloudbase.json 文件里的内容如下：
{
"hosting": {
"cleanUrls": true,
"rewrites": [
      {
        "source": "**",
        "destination": "/index.html"
      }
    ]
  }
}
4.选择本地代码布署
5.填好内容后按布署按钮

//打包并发布到netlify上 链接：https://www.netlify.com
1.打包 flutter build web --release
2.在 build/web 目录下创建 _redirects 文件（无后缀名），内容为：/*    /index.html 200
3.把web压缩成zip
4.登录netlify->add new project-> import an existing project-> Try Netlify Drop->把压缩包拖到网站内

//布署到netlify免费版上，会把项目布到美国本部的服务器上，用户第一次打开网站要去美国下资源main.dart.js
//导致下载非常的慢，
//目前加了一个loading

此方案需要把网站布署到国内测试是否有效
//优化第一次打开网站加载慢的问题：
1.https://cdn.jsdelivr.net/npm/canvaskit-wasm@0.40.0/bin/  到这个网站把canvaskit.js与canvaskit.wasm加载下来
2.把文件放到项目的web/assets/canvaskit,没有文件夹就建一个
3.打包命令flutter build web --web-renderer canvaskit
--dart-define=FLUTTER_WEB_CANVASKIT_URL=./assets/canvaskit/ --release
