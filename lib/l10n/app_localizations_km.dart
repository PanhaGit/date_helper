// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Khmer Central Khmer (`km`).
class AppLocalizationsKm extends AppLocalizations {
  AppLocalizationsKm([String locale = 'km']) : super(locale);

  @override
  String get unknownTime => 'ពេលវេលាមិនស្គាល់';

  @override
  String get justNow => 'ទើបតែ';

  @override
  String minutesAgo(Object minutes) {
    return '$minutes នាទីមុន';
  }

  @override
  String hoursAgo(Object hours) {
    return '$hours ម៉ោងមុន';
  }

  @override
  String daysAgo(Object days) {
    return '$days ថ្ងៃមុន';
  }

  @override
  String get unknownDate => 'កាលបរិច្ឆេទមិនស្គាល់';
}
