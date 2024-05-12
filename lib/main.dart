

import 'app_config.dart';
import 'app_starter.dart';

Future<void> main() async {
  await appConfig(() =>  AppStarter());
}
