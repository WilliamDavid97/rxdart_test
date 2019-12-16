import 'package:rxdart/rxdart.dart';

class Tes {
  List<String> data = ['kyaw', 'lin', 'htwe'];
  BehaviorSubject<List<String>> controller = BehaviorSubject<List<String>>();
  Observable<List<String>> obs() {
    return controller.stream;
  }

  someBasicFn() {
    data.add('shine');
    print(data);
    controller.sink.add;
  }

  dispose() {
    controller.close();
  }
}
