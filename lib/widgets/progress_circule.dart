import 'package:flutter/material.dart';

class ProgressCircule extends StatelessWidget {
  const ProgressCircule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
