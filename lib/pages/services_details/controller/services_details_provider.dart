import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kayaan/helper/data_file.dart';
import 'package:kayaan/pages/services_details/model/services_model.dart';

final servicesDetailsProvider = ChangeNotifierProvider<ServicesDetails>((ref) {
  return ServicesDetails();
});

class ServicesDetails extends ChangeNotifier {
  List<ServicesDetailsModel> servicesList = DataFile.servicesDetailsList;
}
