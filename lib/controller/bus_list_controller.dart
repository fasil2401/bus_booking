import 'package:bus_booking/services/bus_list.dart';
import 'package:get/get.dart';

import '../model/Bus List model/bus_list_model.dart';
import '../services/login_services.dart';



class BusListController extends GetxController {
  var isLoading = true.obs;
  var message = ''.obs;

  var status = false.obs;
  var busList = <BusListElement>[].obs;
@override
  void onInit() {
    // TODO: implement onInit
    getBusList();
    super.onInit();
  }

  void getBusList(
      ) async {
    try {
      isLoading(true);
      var feedback = await RemoteServicesBusList().getBusList(
          );
      if (feedback != null) {
        // message.value = feedback.message;
busList.value = feedback.busList;
        status.value = feedback.status;
      } else {
        message.value = 'failure';
      }
    } finally {
      isLoading(false);
      if (status.value == true) {
        print(status.value);
        print(busList.value);
        
        // Get.offNamed('/home');
      } else {
        Get.snackbar('Error', 'No User Found');
      }
    }
  }

  
}
