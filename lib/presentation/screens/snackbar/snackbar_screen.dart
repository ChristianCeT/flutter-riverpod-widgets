import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text(
            'Deserunt aliquip incididunt nostrud ex cupidatat mollit deserunt officia minim culpa est et duis officia. Pariatur cillum amet aliquip deserunt. Ullamco labore ea sit nisi eu sint enim et qui consequat. Ullamco reprehenderit voluptate fugiat nostrud ullamco anim nisi. Sit nisi pariatur magna elit aliqua ipsum excepteur magna.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancel')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Accept'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars and Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                        'Cillum aliqua aute eu qui ad cupidatat exercitation deserunt eiusmod. Ut ullamco cillum incididunt esse pariatur ad anim culpa. Exercitation officia quis laborum amet in ad sunt. Enim laborum ea ipsum est consequat. Commodo Lorem mollit incididunt occaecat ullamco commodo aliquip laborum qui est cillum mollit.')
                  ],
                );
              },
              child: const Text("Licences used"),
            ),
            FilledButton(
              onPressed: () => openDialog(context),
              child: const Text("Show Dialog"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text('Mostrar Snackbar'),
      ),
    );
  }
}
