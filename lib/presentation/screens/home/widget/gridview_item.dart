import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svens_bakery/infrastructure/services/app_colors.dart';
import '../../../components/components.dart';

class GridviewItem extends StatelessWidget {
  final String photo;
  final String name;
  const GridviewItem({super.key, required this.photo, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 105.w,
      //color: Colors.amber,
      child: Column(
        children: [
          SizedBox(
            //color: Colors.red,
            width: 105.w,
            height: 132.h,
            child: Image.asset(
              photo,
              fit: BoxFit.fill,
            ),
          ),
          9.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            child: SizedBox(
              height: 40.h,
              //color: Colors.red,
              child: PoppinsCustomText(
                isUppercase: true,
                text: name,
                fontSize: 12.sp,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          9.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            child: CustomButton(
              onPressed: () {},
              text: "Order Now",
              height: 30.h,
              buttonColor: AppColors.darkGrey,
              textColor: AppColors.greenStyle,
            ),
          ),
          3.verticalSpace,
        ],
      ),
    );
  }
}
