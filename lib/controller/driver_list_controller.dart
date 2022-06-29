import 'package:bus_booking/services/bus_list.dart';
import 'package:get/get.dart';

import '../model/Bus List model/bus_list_model.dart';
import '../model/driver list model/driver_list_model.dart';
import '../services/drivet_list.dart';
import '../services/login_services.dart';

class DriverListController extends GetxController {
  var isLoading = true.obs;
  var message = ''.obs;

  var status = false.obs;
  var driverList = <DriverListElement>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    getDriverList();

    super.onInit();
  }

  void getDriverList() async {
    try {
      isLoading(true);
      var feedback = await RemoteServicesDriverList().getDriverList();
      if (feedback != null) {
        // message.value = feedback.message;
        driverList.value = feedback.driverList;
        status.value = feedback.status;
        update();
      } else {
        message.value = 'failure';
      }
    } finally {
      isLoading(false);
      if (status.value == true) {
        // print(status.value);
        // print(busList.value);

        // Get.offNamed('/home');
      } else {
        Get.snackbar('Error', 'No User Found');
      }
    }
  }
}
