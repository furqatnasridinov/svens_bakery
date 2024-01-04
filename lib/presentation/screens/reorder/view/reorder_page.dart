import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/widget.dart';

@RoutePage()
class ReOrderScreen extends StatelessWidget {
  const ReOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 50.h),
              child: const ReorderCard(),
            );
          },
        ),
      ),
    );
  }
}
