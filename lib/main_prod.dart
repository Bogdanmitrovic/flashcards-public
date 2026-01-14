import 'main_common.dart';

Future<void> main() async {
  Flavor.current = AppFlavor.prod;
  await bootstrap(isDev: false);
}
