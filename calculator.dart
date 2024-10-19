import 'package:calculator/Buttons/ButtonC.dart';
import 'package:calculator/Buttons/ListButton.dart';
import 'package:calculator/Widgets/textformfeild.dart';
import 'package:calculator/provider/provider_calculator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// Import your ProviderCalculator

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    final padding = const EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    final decoration = const BoxDecoration(
      color: Color.fromARGB(255, 0, 0, 0),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15), topRight: Radius.circular(15)),
    );

    return Consumer<ProviderCalculator>(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text('Calculator'),
            backgroundColor: Colors.black,
            centerTitle: true,
          ),
          body: Column(
            children: [
              CustomTextFeild(controller: provider.compController),
              const Spacer(),
              Container(
                decoration: decoration,
                height: MediaQuery.of(context).size.height * 0.6,
                width: double.infinity,
                padding: padding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(4, (index) => buttonlist[index])
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(4, (index) => buttonlist[index + 4])
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(4, (index) => buttonlist[index + 8])
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(4, (index) => buttonlist[index + 12])
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(4, (index) => buttonlist[index + 16])
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
