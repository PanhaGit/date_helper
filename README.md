

# Date Translate

A Flutter package for easily formatting dates and times, including a "time ago" feature with automatic localization support for English and Khmer.

-----

## Installation

Add the following to your `pubspec.yaml` file under `dependencies`:

```yaml
dependencies:
  date_translate:
    git:
      url: https://github.com/PanhaGit/date_translate.git
      ref: main
```

Then, run:

```bash
flutter pub get
```

-----

## Usage

### 1\. Import the package

```dart
import 'package:date_translate/date_translate.dart';
```

### 2\. Ensure your app supports localization

This package relies on Flutter's localization system using ARB files for translating time ago strings.

**Required ARB Files:**

  * `lib/l10n/app_en.arb` (English)
  * `lib/l10n/app_km.arb` (Khmer)

**Example `app_en.arb` (English):**

```json
{
  "@@locale": "en",
  "unknownTime": "Unknown time",
  "justNow": "Just now",
  "minutesAgo": "{minutes} minutes ago",
  "@minutesAgo": {"placeholders": {"minutes": {}}},
  "hoursAgo": "{hours} hours ago",
  "@hoursAgo": {"placeholders": {"hours": {}}},
  "daysAgo": "{days} days ago",
  "@daysAgo": {"placeholders": {"days": {}}},
  "unknownDate": "Unknown date"
}
```

**Example `app_km.arb` (Khmer):**

```json
{
  "@@locale": "km",
  "unknownTime": "ពេលវេលាមិនស្គាល់",
  "justNow": "ទើបតែ",
  "minutesAgo": "{minutes} នាទីមុន",
  "@minutesAgo": {"placeholders": {"minutes": {}}},
  "hoursAgo": "{hours} ម៉ោងមុន",
  "@hoursAgo": {"placeholders": {"hours": {}}},
  "daysAgo": "{days} ថ្ងៃមុន",
  "@daysAgo": {"placeholders": {"days": {}}},
  "unknownDate": "កាលបរិច្ឆេទមិនស្គាល់"
}
```

### 3\. Using `DateTranslate` in your Flutter widgets

Use the static methods on `DateTranslate` to format `DateTime` objects.

```dart
import 'package:flutter/material.dart';
import 'package:date_translate/date_translate.dart';

class DateExampleWidget extends StatelessWidget {
  const DateExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final fiveMinutesAgo = now.subtract(const Duration(minutes: 5));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Formatted date: ${DateTranslate.formatDateTime(context, now)}"),
        Text("Time ago: ${DateTranslate.formatTimeAgo(context, fiveMinutesAgo)}"),
        Text("Full date: ${DateTranslate.formatFullDate(context, now)}"),
        Text("Detailed date: ${DateTranslate.formatDetailedDate(now)}"),
      ],
    );
  }
}
```

-----

## Notes

  * **Localization:** `DateTranslate.formatTimeAgo` automatically switches between **Khmer (`km`)** and **English (`en`)** based on the current locale derived from the `BuildContext`. Ensure your `AppLocalizations` supports these locales.
  * **Null Handling:** If a `DateTime` input is `null`, the functions will safely return the localized string for `"Unknown time"` or `"Unknown date"`.
