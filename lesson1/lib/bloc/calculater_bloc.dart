import 'dart:async';


class CalculaterBloc {

  StreamController<int> sController = StreamController<int>();

  Stream<int> getStream() => sController.stream;

  add(int num1, int num2){
    int total = num1 + num2;
    sController.sink.add(total);
  }

  sub(int num1, int num2){
    int total = num1 - num2;
    sController.sink.add(total);
  }



  
}