import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../helper/data_file.dart';
import '../../model/service_type_model.dart';


final serviceTypeProvider = ChangeNotifierProvider<ServiceType>((ref) {
  return ServiceType();
});

class ServiceType extends ChangeNotifier {
  List<ServiceTypeModel> servicesList = DataFile.serviceType;
  bool isLoad = false;

  setCheckBox(String id) {
    // isLoad = true;
    // listen();
    for (var service in servicesList) {
      if (service.id == id) {
        service.check = !service.check;
        break;
      }
    }

    // isLoad = false;
    // listen();
  }

  listen() {
    notifyListeners();
  }
}
