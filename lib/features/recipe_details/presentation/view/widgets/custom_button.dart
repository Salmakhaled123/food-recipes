import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
      child: SizedBox(width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[200],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r))),
            onPressed: onPressed, child: const Text('Watch on Youtube')),
      ),
    );
  }
}
