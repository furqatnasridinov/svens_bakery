import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svens_bakery/infrastructure/services/app_colors.dart';
import 'package:svens_bakery/infrastructure/services/app_constants.dart';
import 'package:svens_bakery/presentation/components/components.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      //height: 363.h,
      color: AppColors.darkGrey,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 35.w,
                height: 35.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.close,
                  size: 25.r,
                ),
              ),
              Image.asset(
                AppConstants.editIconPng,
                width: 35.w,
                height: 35.h,
                color: Colors.white,
              )
            ],
          ),
          30.verticalSpace,
          PoppinsCustomText(
            text: "John",
            fontSize: 40.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.greenStyle,
          ),
          20.verticalSpace,
          PoppinsCustomText(
              text: "Rookie",
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white),
          20.verticalSpace,
          PoppinsCustomText(
              text: "Tier Points : 20",
              fontSize: 25.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white),
          6.verticalSpace,
          PoppinsCustomText(
              text: "Since 2022",
              fontSize: 25.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white),
        ],
      ),
    );
  }
}
