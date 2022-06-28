import 'package:get/get.dart';

import '../services/login_services.dart';
import 'bus_list_controller.dart';


final buslistController = Get.put(BusListController());
class LoginController extends GetxController {
  var isLoading = true.obs;
  var message = ''.obs;
  var access = ''.obs;
  var refreshToken = ''.obs;
  var name = ''.obs;
  var urlId = ''.obs;
  var status = false.obs;


  void getLogin(
      ) async {
    try {
      isLoading(true);
      var feedback = await RemoteServicesLogin().getLogin(
          );
      if (feedback != null) {
        message.value = feedback.message;
        access.value = feedback.access;
        refreshToken.value = feedback.refresh;
        name.value = feedback.name;
        urlId.value = feedback.urlId;
        status.value = feedback.status;
      } else {
        message.value = 'failure';
      }
    } finally {
      isLoading(false);
      if (status.value == true) {
        print(access.value);
        print(urlId.value);
        print(status.value);
        print(refreshToken.value);
        Get.offNamed('/home');
        // buslistController.getBusList();
      } else {
        Get.snackbar('Error', 'No User Found');
      }
    }
  }

  void refresh() async{
    try {
      isLoading(true);
      var feedback = await RemoteServicesLogin().getLogin(
          );
      if (feedback != null) { 
        access.value = feedback.access;
        refreshToken.value = feedback.refresh;
      } else {
        message.value = 'failure';
      }
    } finally {
      isLoading(false);
      if (status.value == true) {
        print(access.value);
        print(urlId.value);
        print(status.value);
        print('refreshhhhhhh${refreshToken.value}');
        // Get.offNamed('/home');
      } else {
        Get.snackbar('Error', 'No User Found');
      }
    }
  }
}
