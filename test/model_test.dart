import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestcountapp/counter_model.dart';

void main() {
  group('test of counter model', () {
    test('should start from 0', () {
      const counter = CounterModel();
      expect(counter.count, 0);
      final nextCounter = counter.increment();
      expect(counter.count, 0);
      expect(nextCounter.count, 1);
    });
    test('should be 0 after 9', () {
      const counter = CounterModel(count: 9);
      final nextCounter = counter.increment();
      expect(counter.count, 9);
      expect(nextCounter.count, 0);
    });
  });
}
