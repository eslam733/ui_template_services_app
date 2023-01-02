import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'service_type_provider.dart';

final stateCheckBoxClick = ChangeNotifierProvider<StateCheckBoxClick>((ref) {
  return StateCheckBoxClick(ref: ref);
});

class StateCheckBoxClick extends ChangeNotifier {
  Ref ref;
  StateCheckBoxClick({required this.ref});

  click(String id) {
    ref.read(serviceTypeProvider).setCheckBox(id);
  }
}
