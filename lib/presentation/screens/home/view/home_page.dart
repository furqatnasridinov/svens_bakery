import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svens_bakery/infrastructure/services/app_colors.dart';
import 'package:svens_bakery/presentation/components/components.dart';
import '../widget/widget.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HomePageTopContainer(),
              14.verticalSpace,
              const CardWithVideo(),
              30.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PoppinsCustomText(
                      text: "Select the best Bakery Items!",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    PoppinsCustomText(
                      text: "Order",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.greenStyle,
                    ),
                  ],
                ),
              ),
              30.verticalSpace,
               SectionWithGridview(),
              30.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
