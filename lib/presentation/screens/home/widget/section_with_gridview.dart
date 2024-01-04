import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svens_bakery/infrastructure/services/dummy_data.dart';
import 'package:svens_bakery/presentation/screens/home/widget/widget.dart';

class SectionWithGridview extends StatelessWidget {
  SectionWithGridview({super.key});

  final list = DummyData().bakeryItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20.w,
            mainAxisSpacing: 30.h,
            mainAxisExtent: 230.h),
        itemBuilder: (context, index) {
          final current = list[index];
          return GridviewItem(
            photo: current.photo,
            name: current.name,
          );
        },
      ),
    );
  }
}
