import 'package:flutter/material.dart';
import 'package:flutter_study/constvalue/Const.dart';

class ImageStatelessageWideget extends StatelessWidget {
  final String path;
  final int type;
  final double width;
  final double height;

  //支持两种可选参数 ， 命名可选参数 {}默认是使用： 和位置可选参数[] 默认值用等号
  //选择使用命名参数  方便参数的调用直观
  ImageStatelessageWideget(this.path, {this.type, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    if (type == null) {
      return new AssetImg(
        path,
        mheight: height,
        mwidth: width,
      );
    }
    if (type == Const.assetImg) {
      return new AssetImg(path, mheight: height, mwidth: width);
    }
    return new AssetImg(path, mheight: height, mwidth: width);
  }
}

class AssetImg extends StatelessWidget {
  final String path;
  final double mwidth;
  final double mheight;

  AssetImg(this.path, {this.mheight, this.mwidth});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      height: mheight,
      width: mwidth,
      fit: BoxFit.cover,
    );
  }
}


