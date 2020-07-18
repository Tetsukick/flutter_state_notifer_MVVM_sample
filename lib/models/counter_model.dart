import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_model.freezed.dart';
part 'counter_model.g.dart';

@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState({
    @Default(0) int count,
  }) = _CounterState;
  factory CounterState.fromJson(Map<String, dynamic> json) =>
      _$CounterStateFromJson(json);
}

extension CounterModel on CounterState {
  CounterState increment() {
    final nextCount = count + 1;
    if (nextCount > 9) {
      return const CounterState(count: 0);
    }
    return CounterState(count: nextCount);
  }
}