import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svens_bakery/presentation/components/components.dart';
import 'package:svens_bakery/presentation/screens/profile/widget/widget.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ProfileCard(),
              17.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                ),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    listview(
                      Icons.insert_chart,
                      "Promo Code",
                    ),
                    listview(
                      Icons.refresh,
                      "Reorder",
                    ),
                    listview(
                      Icons.chat,
                      "Inbox",
                    ),
                    listview(
                      Icons.card_giftcard_outlined,
                      "Loyalty History Point",
                    ),
                    listview(
                      Icons.info,
                      "Personal Info",
                    ),
                    listview(
                      Icons.credit_card,
                      "Payment Methods",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget listview(
  IconData leading,
  String title,
) {
  return Padding(
    padding: EdgeInsets.only(bottom: 5.h),
    child: ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        leading,
        size: 40.r,
      ),
      title: PoppinsCustomText(
        text: title,
        fontSize: 20.sp,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 30.r,
      ),
      shape: Border(
        bottom: BorderSide(
          color: Colors.grey.shade300,
        ),
      ),
    ),
  );
}
