import 'package:flutter/material.dart';
import 'package:hng_task3/constants/app_color.dart';
import 'package:hng_task3/widgets/shimmer_skeleton.dart';
import 'package:shimmer/shimmer.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColor.mainColor,
      highlightColor: AppColor.textColor.withOpacity(0.8),
      period: const Duration(seconds: 2),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return const LoadingSkeleton();
          },
          itemCount: 20,
        ),
      ),
    );
  }
}

class LoadingSkeleton extends StatelessWidget {
  const LoadingSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleSkeleton(
              radius: 30,
              width: 50,
              height: 50,
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Skeleton(
                    height: 20,
                    width: width * 0.7,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Skeleton(
                    width: width * 0.2,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
