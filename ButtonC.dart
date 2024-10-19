import 'package:calculator/calculator.dart';
import 'package:calculator/provider/provider_calculator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonC extends StatelessWidget {
  const ButtonC({
    super.key,
    required this.label,
    this.TextColor = Colors.white,
    // this.onTap,
  });

  final String label;
  final Color TextColor;
  // final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<ProviderCalculator>(context, listen: false).setValue(label);
      },
      borderRadius: BorderRadius.circular(30),
      child: CircleAvatar(
        backgroundColor: Colors.black,
        radius: 30,
        child: Text(
          label,
          style: TextStyle(fontSize: 30, color: TextColor),
        ),
      ),
    );
  }
}
