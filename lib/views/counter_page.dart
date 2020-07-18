import 'package:flutter/material.dart';
import 'package:fluttertestcountapp/Models/counter_model.dart';
import 'package:fluttertestcountapp/ViewModels/counter_state_notifier.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final count =
    context.select<CounterState, int>((CounterState state) => state.count);
    return Scaffold(
      appBar: AppBar(
        title: const Text('カウンターサンプル'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              count.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterStateNotifier>().increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}