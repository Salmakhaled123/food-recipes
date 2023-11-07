import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
class CustomShimmerLoadingWidget extends StatelessWidget {
  const CustomShimmerLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(highlightColor: Colors.grey[400]!,
      baseColor: Colors.grey[300]!,
      child: Padding(
        padding:  EdgeInsets.only(bottom: 10.h),
        child: Container(height: 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16)),
          width: double.infinity,

        ),
      ),


    );
  }
}
