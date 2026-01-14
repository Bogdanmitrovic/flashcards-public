import 'main_common.dart';

Future<void> main() async {
  Flavor.current = AppFlavor.dev;
  await bootstrap(isDev: true);
}
