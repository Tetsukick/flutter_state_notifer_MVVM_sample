import 'package:equatable/equatable.dart';

//実際はfreezedとか使った方がよい
class CounterModel extends Equatable {
  const CounterModel({this.count = 0});

  CounterModel increment() {
    final nextCount = count + 1;
    if (nextCount > 9) {
      return const CounterModel(count: 0);
    }
    return CounterModel(count: nextCount);
  }

  final int count;
  @override
  bool get stringify => true;
  @override
  List<Object> get props => <Object>[count];
}
