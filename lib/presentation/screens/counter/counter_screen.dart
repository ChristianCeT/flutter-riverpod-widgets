import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/screens/providers/counter_provider.dart';

//ConsumerWidget para riverpod
class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  //ADICIONAL el ref
  Widget build(BuildContext context, WidgetRef ref) {
    //pendiente del counter:watch
    final int counterValue = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /* ref.read(counterProvider.notifier).update((state) => state + 1); */
          ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          "Valor: $counterValue",
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
