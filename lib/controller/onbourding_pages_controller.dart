import 'dart:async';

import 'package:flutter/material.dart';

import '../core/resources/routes_manager.dart';
import '../core/resources/utils.dart';
import '../model/onbourding_pages_model.dart';

class OnbourdingPagesController  {
final BuildContext context;
late StreamController<int> _streamControllerNextPage;
late Sink<int> sinkNextPage;
late Stream<int> streamNextPage;
late final OnbourdingPageModel onbourdingPageModel;
 int index=0;
OnbourdingPagesController({required this.context,}){
  onbourdingPageModel = Utils.listOnbourdingPages[index];
}
void nextPage(){
  if (index < Utils.listOnbourdingPages.length -1){
    index++;
    sinkNextPage.add(index);
    onbourdingPageModel = Utils.listOnbourdingPages[index];

  }else{
    Navigator.pushNamed(context, RoutesName.loginRoute);
  }
}
void skipPage(){
  Navigator.pushNamed(context, RoutesName.loginRoute);
}
void initStream(){
  _streamControllerNextPage = StreamController<int>.broadcast();
  sinkNextPage = _streamControllerNextPage.sink;
  streamNextPage = _streamControllerNextPage.stream;
}
void disposeStream(){
  _streamControllerNextPage.close();
  sinkNextPage.close();
}

}
