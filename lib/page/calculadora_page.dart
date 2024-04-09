import 'package:calculadora/components/custom_card.dart';
import 'package:calculadora/components/gender_select.dart';
import 'package:calculadora/constants.dart';
import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
          child: Row(children: [
            Expanded(
                child: CustomCard(
                  child: GenderSelect(
                    icon: Icons.male, 
                    gender: 'Masculino'
                    ),
                ),
            ), 
            Expanded(
               child: CustomCard(
                child: GenderSelect(
                    icon: Icons.female, 
                    gender: 'Feminino'
                    ),
               ),
               ),
          ]),
        ),
        Expanded(
          child: CustomCard(),
        ),
        Expanded(
          child: Row(children: [
            Expanded(
              child: CustomCard(),
            ),
            Expanded(
              child: CustomCard(),
            ),
          ]),
        ),
      ]),
    );
  }
}
