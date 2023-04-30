import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloperMode = true;

  Transportation selectedTransportation = Transportation.car;

  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode1'),
          subtitle: const Text('Controls aditionals'),
          value: isDeveloperMode,
          onChanged: (value) {
            setState(() {
              isDeveloperMode = !isDeveloperMode;
            });
          },
        ),
        ExpansionTile(
          title: const Text('Transportation'),
          subtitle: Text(
              "Selected: ${selectedTransportation.toString().split('.').last}"),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Travel by car'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: ((value) {
                setState(() {
                  selectedTransportation = Transportation.car;
                });
              }),
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Travel by boat'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: ((value) {
                setState(() {
                  selectedTransportation = Transportation.boat;
                });
              }),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Travel by plane'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: ((value) {
                setState(() {
                  selectedTransportation = Transportation.plane;
                });
              }),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Travel by submarine'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: ((value) {
                setState(() {
                  selectedTransportation = Transportation.submarine;
                });
              }),
            ),
          ],
        ),
        //todo: termina aquí
        CheckboxListTile(
          title: const Text('Do you want breakfast?'),
          value: wantsBreakfast,
          onChanged: (value) {
            setState(() {
              wantsBreakfast = !wantsBreakfast;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Do you want lunch?'),
          value: wantsLunch,
          onChanged: (value) {
            setState(() {
              wantsLunch = !wantsLunch;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Do you want dinner?'),
          value: wantsDinner,
          onChanged: (value) {
            setState(() {
              wantsDinner = !wantsDinner;
            });
          },
        ),
      ],
    );
  }
}
