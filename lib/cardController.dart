import 'package:get/get.dart';

class CardController extends GetxController{
Map<String, bool> devices = {'Light':false,'Heater':false, 'Fan': false, 'AC':false};
  
void changeValue(String id){
  devices[id] = !devices[id]!;
  update();
}

}