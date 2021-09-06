import 'package:get/get.dart';

class CardController extends GetxController{
RxBool value = false.obs;
void changeValue(){
  value.value = !value.value;
  update();
}
}