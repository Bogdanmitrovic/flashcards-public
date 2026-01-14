import 'package:flutter/cupertino.dart';
import 'package:flashcards/l10n/app_localizations.dart';

enum EducationLevel {
  medicalStudent,
  intern,
  juniorResident,
  seniorResident,
  fellow,
  consultant;

  // KORISTI OVU FUKNCIJU DA BI INTL RADIO!!
  String toLocalizedString(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    switch (this) {
      case EducationLevel.medicalStudent:
        return loc.medicalStudent;
      case EducationLevel.intern:
        return loc.intern;
      case EducationLevel.juniorResident:
        return loc.juniorResident;
      case EducationLevel.seniorResident:
        return loc.seniorResident;
      case EducationLevel.fellow:
        return loc.fellow;
      case EducationLevel.consultant:
        return loc.consultant;
    }
  }
}

EducationLevel educationLevelFromJson(String level) => EducationLevel.values
    .firstWhere((e) => e.name == level, orElse: () => EducationLevel.intern);

String educationLevelToJson(EducationLevel level) => level.name;
