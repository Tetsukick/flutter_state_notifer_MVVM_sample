import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestcountapp/Models/counter_model.dart';
import 'package:fluttertestcountapp/ViewModels/counter_state_notifier.dart';

void main() {
  group('Test of count notifier', () {
    test('changing count result', () {
      final counterStateNotifier = CounterStateNotifier();
      expect(counterStateNotifier.debugState, const CounterState(count: 0));
      counterStateNotifier.tapPlusBtn();
      expect(counterStateNotifier.debugState, const CounterState(count: 1));
    });
  });
}
