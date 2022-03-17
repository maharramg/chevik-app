import 'package:start_up/infrastructure/service/service.dart';
import 'package:start_up/l10n/l10n.dart';

class LocaleKeys {
  static LocaleKeys? _instance;
  static LocaleKeys get instance => _instance ??= LocaleKeys._init();

  LocaleKeys._init();

  static String rootTitle = ctx!.l10n.startupAppBarTitle;
  static String settingsTitle = ctx!.l10n.body;
}
