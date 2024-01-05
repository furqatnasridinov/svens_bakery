import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svens_bakery/infrastructure/services/app_colors.dart';
import 'package:svens_bakery/presentation/router/app_router.dart';

@RoutePage()
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes:  [
        BakeryItemTabRoute(),
        const DealsTabRoute(),
        const BreadAndBunsTabRoute(),
      ],
      builder: (context, child, controller) {
        //final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: AppColors.darkGrey,
            bottom: TabBar(
              controller: controller,
              indicatorColor: Colors.transparent,
              labelPadding: EdgeInsets.zero,
              labelStyle: GoogleFonts.poppins(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.greenStyle),
              unselectedLabelStyle: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700),
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              tabs: const [
                Tab(text: 'Bakery Items'),
                Tab(text: 'Deals'),
                Tab(text: 'Bread & Buns'),
              ],
            ),
          ),
          body: child,
        );
      },
    );
  }
}
