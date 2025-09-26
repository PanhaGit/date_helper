/// Author: THO Panha
/// student from Western University in Cambodia
/// Developer: WU Mobile
/// Package: Date Translate
/// copy right @PanhaGit 2025
library;

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'l10n/app_localizations.dart';

class DateHelper {
  /// Formats [dateTime] using the current locale
  static String formatDateTime(BuildContext context, DateTime dateTime) {
    final locale = Localizations.localeOf(context).toString();
    final formatter = DateFormat('MMM dd, yyyy - hh:mm a', locale);
    return formatter.format(dateTime);
  }

  /// Returns time ago string, e.g., "5 minutes ago" / "5 នាទីមុន"
  static String formatTimeAgo(BuildContext context, DateTime? date) {
    final l10n = AppLocalizations.of(context)!;

    if (date == null) return l10n.unknownTime;

    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inSeconds < 60) return l10n.justNow;
    if (difference.inMinutes < 60) return l10n.minutesAgo(difference.inMinutes);
    if (difference.inHours < 24) return l10n.hoursAgo(difference.inHours);
    if (difference.inDays < 7) return l10n.daysAgo(difference.inDays);

    return DateFormat.yMd(
      Localizations.localeOf(context).languageCode,
    ).format(date);
  }

  /// Formats full date with time using current locale
  static String formatFullDate(BuildContext context, DateTime? date) {
    final l10n = AppLocalizations.of(context)!;
    if (date == null) return l10n.unknownDate;

    return DateFormat.yMMMMd(
      Localizations.localeOf(context).languageCode,
    ).add_jm().format(date);
  }

  /// Detailed date formatting (no localization)
  static String formatDetailedDate(DateTime? date) {
    if (date == null) return 'Unknown date';
    return DateFormat('MMMM d, y • h:mm a').format(date);
  }
}
