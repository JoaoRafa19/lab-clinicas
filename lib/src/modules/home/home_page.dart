import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Scaffold(
        appBar: LabClinicasAppBar(
          actions: [
            PopupMenuButton(
              child: const IconPopUpMenuWidget(),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem<int>(
                    value: 1,
                    child: Text('Iniciar terminal'),
                  ),
                  const PopupMenuItem<int>(
                    value: 1,
                    child: Text('Finalizar terminal'),
                  )
                ];
              },
            )
          ],
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: const EdgeInsets.only(top: 112),
            padding: const EdgeInsets.all(40),
            width: sizeOf.width * .8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: LabClinicasTheme.orangeColor,
              ),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Bem vindo!',
                  style: LabClinicasTheme.titleStyle,
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: sizeOf.width * .8,
                  height: 48,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/self-service');
                      },
                      child: const Text(
                        'INICIAR TERMINAL',
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
