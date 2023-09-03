import 'package:flutter/cupertino.dart';

import 'app.dart';
import 'config/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  service();
  runApp(const MyApp());
}
