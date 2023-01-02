import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../../helper/local_database/local_database.dart';

enum FirstLaunchStatus {
  authed,
  notAuthed,
  noConnection,
}

final rootScreenProvider = FutureProvider<FirstLaunchStatus>(
  (ref) async {
    if (!(await InternetConnectionChecker().hasConnection)) {
      return FirstLaunchStatus.noConnection;
    }
    // InternetConnectionListener().init();
    // ref.read(appVersionProvider).checkLatestVersion();
    //check if user authenticated
    await LocalDatabase.openHiveBox();
    final String? token = LocalDatabase.getToken();
    if (token == null) return FirstLaunchStatus.notAuthed;

    // final userData = await UserDataServices.getUserData();
    // if ("userData" == null) return FirstLaunchStatus.notAuthed;

    // ref.read(userDataProvider).copyUserDataFromOtherObject(userData);
    return FirstLaunchStatus.authed;
  },
);
