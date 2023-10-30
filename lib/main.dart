import 'package:flutter/widgets.dart';
import 'package:inherited_state/inherited_state.dart';
import 'package:muslim_buddy/features/asma_ul_husna/name_service.dart';

import 'app.dart';
import 'core/api_client.dart';
import 'mapper.g.dart' as mapper;

void main() {
  mapper.init();
  registerDependencies();
  // setUrlStrategy(PathUrlStrategy());

  runApp(const CoreApp());
}

void registerDependencies() {
  SL.register(() => const ApiClient());
  SL.register(() => NamesOfAllahService());
}
