import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:svens_bakery/infrastructure/services/dummy_data.dart';

import '../widget/widget.dart';

@RoutePage()
class BakeryItemTabScreen extends StatelessWidget {
  BakeryItemTabScreen({super.key});
  final list = DummyData().bakeryItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
        final current = list[index];
        return OrderCard(
          photo: current.photo,
          name: current.name,
        );
      }),
    );
  }
}
