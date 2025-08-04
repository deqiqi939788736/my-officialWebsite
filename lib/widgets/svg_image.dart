import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../common/res/asset_images.dart';

class SvgImage extends StatelessWidget {
  Object imageUrl;
  double? width;
  double? height;
  String? placeholder;
  Color? placeholderColor;
  Color? color;
  BoxFit? fit;

  SvgImage(this.imageUrl,
      {required this.width,
      required this.height,
      this.placeholder,
      this.color,
      this.fit});

  @override
  Widget build(BuildContext context) {
    SvgPicture? image;

    if (imageUrl is String) {
      String imageUrl2 = (imageUrl as String);
      if (imageUrl2.contains("assets/")) {
        image = SvgPicture.asset(
          imageUrl2,
          width: width,
          height: height,
          fit: fit ?? BoxFit.contain,
          color: color,
        );
      } else if (imageUrl2.contains("https://") ||
          imageUrl2.contains("http://")) {
        image = SvgPicture.network(
          imageUrl2,
          width: width,
          height: height,
          fit: fit ?? BoxFit.contain,
          color: color,
          placeholderBuilder: (context) {
            Widget placeholderWidget;
            if (placeholder == null ||
                placeholder!.isEmpty ||
                placeholder!.endsWith(".svg")) {
              placeholderWidget = SvgPicture.asset(AssetImages.placeholder,
                  width: width,
                  height: height,
                  fit: fit ?? BoxFit.contain,
                  color: placeholderColor ?? Colors.white);
            } else {
              placeholderWidget =
                  Image.asset(placeholder ?? "", width: width, height: height);
            }
            return placeholderWidget;
          },
        );
      }
    } else if (imageUrl is Uint8List) {
      image = SvgPicture.memory(
        imageUrl as Uint8List,
        width: width,
        height: height,
        fit: fit ?? BoxFit.contain,
        color: color,
      );
    }
    return image ?? const SizedBox();
  }
}
