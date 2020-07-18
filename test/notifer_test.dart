import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestcountapp/counter_model.dart';
import 'package:fluttertestcountapp/counter_notifer.dart';

void main() {
  group('Test of count notifier', () {
    test('changing count result', () {
      final countNotifier = CountNotifier();
      expect(countNotifier.debugState, const CounterModel(count: 0));
      countNotifier.next();
      expect(countNotifier.debugState, const CounterModel(count: 1));
    });
  });
}
