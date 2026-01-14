import 'package:flutter/material.dart';
import 'package:flashcards/l10n/app_localizations.dart';

enum ReportReason {
  inappropriateContent,
  incorrectInformation,
  poorTranslation,
  duplicateFlashcard,
  other;

  String toLocalizedString(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    switch (this) {
      case ReportReason.inappropriateContent:
        return loc.reportReason_inappropriateContent;
      case ReportReason.incorrectInformation:
        return loc.reportReason_incorrectInformation;
      case ReportReason.poorTranslation:
        return loc.reportReason_poorTranslation;
      case ReportReason.duplicateFlashcard:
        return loc.reportReason_duplicateFlashcard;
      default:
        return loc.reportReason_other;
    }
  }
}
