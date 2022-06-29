import 'package:bus_booking/services/create_driver.dart';
import 'package:bus_booking/view/driver_list.dart';
import 'package:get/get.dart';

import '../services/login_services.dart';
import 'bus_list_controller.dart';


final buslistController = Get.put(BusListController());
class AddController extends GetxController {
  var isLoading = true.obs;
  var message = ''.obs;
  var status = false.obs;

  var name ='';
  var licenseNo ='';

validateName(String value){
  name = value;
}
validateLicense(String value){
  licenseNo = value;
}
  void addDriver(
      ) async {
    try {
      isLoading(true);
      var feedback = await RemoteServicesAddDriver().addDriver(
          );
      if (feedback != null) {
        message.value = feedback.message;
        status.value = feedback.status;
        update();

      } else {
        message.value = 'failure';
      }
    } finally {
      isLoading(false);
      if (status.value == true) {
        print(status.value);
        // Get.offNamed('/home');
        update();
        Get.snackbar('Success', 'Driver Added');
        Get.off(()=> DriverList());
        
        // buslistController.getBusList();
      } else {
        Get.snackbar('Error', 'No User Found');
      }
    }
  }

  
}
