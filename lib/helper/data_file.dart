import 'package:kayaan/resources/asset_manager/assets_manager.dart';

import '../pages/new_order/select_services/model/service_type_model.dart';
import '../pages/services_details/model/services_model.dart';

class DataFile {
  static List<ServicesDetailsModel> servicesDetailsList = [
    ServicesDetailsModel(
      title: 'خدمة التنظيف تشمل علي',
      details: [
        'تنظيف السجاد ( الكنس ) و تلميع الارضيات',
        'تنظيف غرف النوم بالكامل و فرش الاسرة',
        ' تنظيف غرف المعيشة و البلكونات',
        'تلميع الاثاث و الزجاج',
        'تلميع المكيفات',
      ],
    ),
    ServicesDetailsModel(
      title: 'لا تشمل الخدمة علي',
      details: [
        'فتح دواليب المطبخ',
        'غسيل السجاد و الحوائط و الستائر',
        'النيش من الداخل',
        'دواليب غرفة النوم',
      ],
    ),
  ];

  static List<ServiceTypeModel> serviceType = [
    ServiceTypeModel(id: '1', icon: AssetsManager.home, title: 'منزل'),
    ServiceTypeModel(id: '2',icon: AssetsManager.bag, title: 'شركة'),
    ServiceTypeModel(id: '3',icon: AssetsManager.dance, title: 'مناسبة'),
  ];
}
