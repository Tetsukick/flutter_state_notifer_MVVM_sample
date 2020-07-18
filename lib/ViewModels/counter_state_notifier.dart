import 'package:fluttertestcountapp/Models/counter_model.dart';
import 'package:state_notifier/state_notifier.dart';

class CounterStateNotifier extends StateNotifier<CounterState> {
  CounterStateNotifier() : super(const CounterState());
  CounterState increment() => state =
      state.copyWith(count: state.count).increment();
}