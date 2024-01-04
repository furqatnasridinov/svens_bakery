import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svens_bakery/infrastructure/services/app_colors.dart';
import 'package:svens_bakery/infrastructure/services/app_constants.dart';
import 'package:svens_bakery/presentation/components/components.dart';

class HomePageTopContainer extends StatelessWidget {
  const HomePageTopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 287.h,
      width: double.maxFinite,
      color: AppColors.darkGrey,
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        children: [
          // left section
          Expanded(
            child: SizedBox(
              //color: Colors.red.shade400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  PoppinsCustomText(
                    text: "GLUTEN LOW",
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.greenStyle,
                  ),
                  28.verticalSpace,
                  PoppinsCustomText(
                    text: AppConstants.glutenLowdescribtion,
                    color: Colors.white,
                  ),
                  28.verticalSpace,
                  CustomButton(
                    onPressed: () {},
                    text: "Explore More",
                    width: 120.w,
                    height: 38.h,
                  ),
                ],
              ),
            ),
          ),
          10.horizontalSpace,
          // right section
          Expanded(
            child: Container(
              height: 210.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                //color: Colors.red.shade300,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AppConstants.glutenLowPng,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
