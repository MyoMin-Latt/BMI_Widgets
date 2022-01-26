import 'dart:async';


class BmiBloc{
  StreamController<num> _calController = StreamController<num>();
  Stream<num> getCalData() => _calController.stream;

  StreamController<String> _textController = StreamController<String>();
  Stream<String> getTextData() => _textController.stream;

  CalculateBmi(weight, heightFeet, heightInch){

    num totalHeigt=(heightFeet*12)+heightInch;
    num bmiNum = 703*(weight/(totalHeigt*totalHeigt));
    _calController.sink.add(bmiNum);

    if(bmiNum<18.5){
    String result = "You are under weight";
    _textController.sink.add(result);
  }
  else if(bmiNum>=18.5 && bmiNum<25){
    String result = "You are normal weight";
    _textController.sink.add(result);

  }
  else if(bmiNum>=25 && bmiNum<30){
    String result = "You are over weight";
    _textController.sink.add(result);
  }
  else{
        String result = "You are obesity";
    _textController.sink.add(result);
  }
  }
}