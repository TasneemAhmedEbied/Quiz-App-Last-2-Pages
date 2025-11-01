import 'dart:async';

class QuizPageController{
  List<String> option = [
    "1986",
    "1994",
    "2002",
    "2010",
  ];
  int groupValueIndex = -1;
 late StreamController<int> streamControllerGroupValueIndex;
 late Sink<int> inputDataGroupValueIndex;
 late Stream<int> outputDataControllerGroupValueIndex;

 QuizPageController(){
   streamControllerGroupValueIndex = StreamController();
   inputDataGroupValueIndex = streamControllerGroupValueIndex.sink;
   outputDataControllerGroupValueIndex = streamControllerGroupValueIndex.stream.asBroadcastStream();
   inputDataGroupValueIndex.add(groupValueIndex);
}
void onTapItemRadio(int index){
   groupValueIndex= index;
  inputDataGroupValueIndex.add(groupValueIndex);
}
onDispose(){
  streamControllerGroupValueIndex.close();
  inputDataGroupValueIndex.close();

 }
}