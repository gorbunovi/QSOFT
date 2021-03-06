



import 'package:model_package/model_package.dart';

import '../api/services.dart';

class DummyCounterService implements CounterService{
  CounterData _counterData = CounterData(counter: 0);

  @override
  Future<CounterData> getCounter() async {
    return _counterData;
    throw UnimplementedError();
  }

  @override
  Future<CounterData> decrementCounter() async {
    /// использовать copywis
    _counterData =  await CounterData(counter: _counterData.counter - 1);
   return _counterData;
  }

  @override
  Future<CounterData> incrementCounter() async {
    _counterData =  await CounterData(counter: _counterData.counter + 1);
    return _counterData;
  }
}