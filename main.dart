import 'package:calculator/calculator.dart';
import 'package:calculator/provider/provider_calculator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Make sure to import the provider package

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderCalculator(), // Corrected this line
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const Calculator(),
      ),
    );
  }
}
