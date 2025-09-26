# Date Translate

A Flutter package for formatting dates and displaying localized "time ago" strings in Khmer and English.  
Designed for easy integration with Flutter apps using `intl` and Flutter's localization system.

---

## Features

- Format `DateTime` objects in a localized manner.
- Display "time ago" strings like `"5 minutes ago"` or `"5 នាទីមុន"`.
- Format full dates with time.
- Detailed date formatting (e.g., `"September 26, 2025 • 3:15 PM"`).
- Compatible with Flutter localization (`gen-l10n`) and `intl`.

---

## Installation

### From GitHub

Add the dependency in your `pubspec.yaml`:

```yaml
dependencies:
  date_translate:
    git:
      url: https://github.com/PanhaGit/date_translate.git
      ref: main
