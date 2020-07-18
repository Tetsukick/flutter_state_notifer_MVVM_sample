import 'package:flutter/material.dart';
import 'package:fluttertestcountapp/Models/counter_model.dart';
import 'package:fluttertestcountapp/ViewModels/counter_state_notifier.dart';
import 'package:fluttertestcountapp/common/common_text_style.dart';
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
            Text(
              'You have pushed the button this many times:',
              style: CommonTextStyles.captionBlack,
            ),
            Text(
              count.toString(),
              style: CommonTextStyles.headlineBlue,
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