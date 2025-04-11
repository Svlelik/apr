import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';
import 'package:shimmer/shimmer.dart';

class UiBalanceCardShimmer extends StatelessWidget {
  const UiBalanceCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade200,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Insets.xl),
        ),
      ),
    );
  }
}
