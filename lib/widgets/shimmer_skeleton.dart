import 'package:flutter/material.dart';

import '../constants/app_color.dart';


class Skeleton extends StatelessWidget {
  const Skeleton({Key? key, this.height, this.width}) : super(key: key);
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppColor.shimColor,
          borderRadius: const BorderRadius.all(Radius.circular(16))),
    );
  }
}

class CircleSkeleton extends StatelessWidget {
  const CircleSkeleton(
      {Key? key, this.height, this.width, required this.radius})
      : super(key: key);
  final double? height;
  final double? width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: AppColor.shimColor,
    );
  }
}
