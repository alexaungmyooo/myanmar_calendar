import 'package:myanmar_calendar/src/language_dictionary.dart';

/// A class for working with the Myanmar calendar system.
///
/// Provides functionality for converting Gregorian dates into the Myanmar
/// calendar format with language-specific support.
class MyanmarCalendar {
  /// The Myanmar calendar number (internal usage).
  int mcNo = 0;

  /// A dictionary containing language-specific strings for the Myanmar calendar.
  Map<String, String> languageDictionary = {};

  /// Maps a language string to its corresponding language code.
  ///
  /// The [lang] parameter is the language string (e.g., "en_gb" for English,
  /// "my_mm" for Myanmar Unicode). Returns an integer representing the language code.
  int _mapLanguageStringToCode(String lang) {
    switch (lang.toLowerCase()) {
      case "en_gb": // English
        return 0;
      case "my_mm": // Myanmar Unicode
        return 1;
      case "my_zg1": // Zawgyi-One
        return 2;
      case "my_mnw": // Mon language
        return 3;
      case "my_shn": // Shan (Tai) language
        return 4;
      case "my_ksw": // S'gaw Karen
        return 5;
      default:
        return 1; // Default to Myanmar Unicode
    }
  }

  /// Creates a new instance of [MyanmarCalendar].
  MyanmarCalendar();

  /// Returns the current Myanmar date as a formatted string.
  ///
  /// The [languageCode] parameter specifies the language (default is 1, Myanmar Unicode).
  /// Returns a string containing the Myanmar calendar date.
  String getCalendar({int languageCode = 1}) {
    try {
      languageDictionary = LanguageDictionary.getLanguageCatalog(languageCode);
      return getMyanmarDateString(languageCode);
    } catch (e) {
      // Handle exceptions, possibly return an error message or default date
      return "Error calculating date.";
    }
  }

  /// Returns the Myanmar date string for a specific language.
  ///
  /// The [lang] parameter specifies the language as a string (e.g., "en_gb").
  /// Returns a string with the Myanmar date in the specified language.
  String getMyanmarDateForLanguage(String lang) {
    int languageCode = _mapLanguageStringToCode(lang);
    languageDictionary = LanguageDictionary.getLanguageCatalog(languageCode);
    return getMyanmarDateString(languageCode);
  }

  /// Returns the Myanmar date string for a given language code.
  ///
  /// The [languageCode] parameter specifies the language code as an integer.
  /// Returns the formatted Myanmar date as a string.
  String getMyanmarDateString(int languageCode) {
    DateTime currentDate = DateTime.now();
    int gregorianYear = currentDate.year;
    int gregorianMonth = currentDate.month;
    int gregorianDay = currentDate.day;

    double julianDay =
        gregorianToJulianDay(gregorianYear, gregorianMonth, gregorianDay);
    Map<String, dynamic> myanmarDate = julianDayToMyanmarDate(julianDay);

    String result =
        "${languageDictionary['Sasana Year']} ${numberToString(myanmarDate['my'] + 1182)} ${languageDictionary['Ku']}${languageDictionary[',']} ";
    result +=
        "${languageDictionary['Myanmar Year']} ${numberToString(myanmarDate['my'])} ${languageDictionary['Ku']}${languageDictionary[',']} ";

    List<String> myanmarMonths = [
      "First Waso",
      "Tagu",
      "Kason",
      "Nayon",
      "Waso",
      "Wagaung",
      "Tawthalin",
      "Thadingyut",
      "Tazaungmon",
      "Nadaw",
      "Pyatho",
      "Tabodwe",
      "Tabaung"
    ];

    if (myanmarDate['mmt'] != 0) result += languageDictionary['Late']!;
    if (myanmarDate['myt'] != 0 && myanmarDate['mm'] == 4) {
      result += languageDictionary['Second']!;
    }
    result += "${languageDictionary[myanmarMonths[myanmarDate['mm']]]} ";

    List<String> moonPhases = ["waxing", "full moon", "waning", "new moon"];
    if (languageCode == 2) {
      if ((myanmarDate['ms'] % 2) == 0) {
        result += " ${numberToString(myanmarDate['d'])} ";
      }
      result += languageDictionary[moonPhases[myanmarDate['ms']]]!;
    } else {
      result += languageDictionary[moonPhases[myanmarDate['ms']]]!;
      if ((myanmarDate['ms'] % 2) == 0) {
        result +=
            " ${numberToString(myanmarDate['d'])} ${languageDictionary['Yat']}";
      }
    }

    List<String> weekdays = [
      'Saturday',
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday'
    ];
    result +=
        "${languageDictionary[',']} ${languageDictionary[weekdays[myanmarDate['wd']]]}${languageDictionary['Nay']}";

    if ((myanmarDate['md'] == 8) ||
        (myanmarDate['md'] == 15) ||
        (myanmarDate['md'] == 23) ||
        (myanmarDate['md'] == myanmarDate['mml'])) {
      result += "${languageDictionary[',']} ${languageDictionary['Sabbath']}";
    } else if ((myanmarDate['md'] == 7) ||
        (myanmarDate['md'] == 14) ||
        (myanmarDate['md'] == 22) ||
        (myanmarDate['md'] == (myanmarDate['mml'] - 1))) {
      result +=
          "${languageDictionary[',']} ${languageDictionary['Sabbath Eve']}";
    }

    return result + languageDictionary['.']!;
  }

  /// Converts a Gregorian date to its corresponding Julian Day.
  ///
  /// The [year], [month], and [day] parameters represent the Gregorian date.
  /// Returns the Julian Day as a [double].
  double gregorianToJulianDay(int year, int month, int day) {
    int a = ((14 - month) ~/ 12);
    int y = year + 4800 - a;
    int m = month + (12 * a) - 3;
    return day +
        ((153 * m + 2) ~/ 5) +
        (365 * y) +
        (y ~/ 4) -
        (y ~/ 100) +
        (y ~/ 400) -
        32045.5;
  }

  /// Converts a Julian Day to its corresponding Myanmar date.
  ///
  /// The [julianDay] parameter represents the Julian Day as a [double].
  /// Returns a map containing various components of the Myanmar calendar date.
  Map<String, dynamic> julianDayToMyanmarDate(double julianDay) {
    const double solarYear = 1577917828 / 4320000; // Solar year length
    const double myanmarEpoch = 1954168.050623; // Start of Myanmar Era

    int julianDayNumber = julianDay.round();
    int myanmarYear =
        ((julianDayNumber - 0.5 - myanmarEpoch) / solarYear).floor();

    Map<String, dynamic> yearData = checkMyanmarYear(myanmarYear);

    int firstDayOfTagu = yearData['tg1'] as int;
    int isWatat = yearData['watat'] as int;
    int bigWatat = yearData['bw'] as int;

    int daysSinceTagu = julianDayNumber - firstDayOfTagu + 1;
    int myanmarYearLength = 354 + isWatat * 30 + bigWatat;

    int myanmarMonthType = ((daysSinceTagu - 1) / myanmarYearLength).floor();
    daysSinceTagu -= myanmarMonthType * myanmarYearLength;
    int t = (myanmarYearLength / (daysSinceTagu + 266)).floor();
    double s = 29.5 + t * yearData['bw'] / 5;
    double c = 117 + t * yearData['bw'] * 14 / 5;
    daysSinceTagu += t * 266 - (1 - t) * (myanmarYearLength - 266);
    int myanmarMonth = ((daysSinceTagu + c) / s).floor();
    int myanmarDay = daysSinceTagu - (s * myanmarMonth - c - 0.1).floor();
    myanmarMonth = myanmarMonth % 16;
    myanmarMonth -= 12 * (myanmarMonth / 13).floor();
    int monthLength = 30 - myanmarMonth % 2;
    if (myanmarMonth == 3) monthLength += bigWatat;
    int moonStatus = ((myanmarDay + 1) / 16).floor() +
        (myanmarDay / 16).floor() +
        (myanmarDay / monthLength).floor();
    int dayOfMoon = myanmarDay - 15 * (myanmarDay / 16).floor();
    int weekDay = (julianDayNumber + 2) % 7;

    return {
      'my': myanmarYear,
      'myt': yearData['myt'],
      'watat': yearData['watat'],
      'bw': yearData['bw'],
      'myl': myanmarYearLength,
      'mm': myanmarMonth,
      'mmt': myanmarMonthType,
      'mml': monthLength,
      'md': myanmarDay,
      'ms': moonStatus,
      'd': dayOfMoon,
      'wd': weekDay,
    };
  }

  /// Verifies and checks the details of a given Myanmar year.
  ///
  /// The [myanmarYear] parameter represents the Myanmar year as an integer.
  /// Returns a map with detailed information about the year, including Watat status.
  Map<String, dynamic> checkMyanmarYear(int myanmarYear) {
    int yd = 0;
    Map<String, dynamic> previousYearData, currentYearData;
    int myt;
    int bigWatat = 0;
    int isWatat;
    int nd;
    int firstDayOfTagu;

    currentYearData = checkWatat(myanmarYear);

    do {
      yd++;
      previousYearData = checkWatat(myanmarYear - yd);
    } while (previousYearData['watat'] == 0);

    isWatat = currentYearData['watat'];
    myt = isWatat;

    if (isWatat != 0) {
      nd = (currentYearData['fm'] - previousYearData['fm']) % 354;
      bigWatat = (nd / 31).floor();
      myt = bigWatat + 1;
    }

    firstDayOfTagu = previousYearData['fm'] + 354 * yd - 102;

    return {
      'myt': myt,
      'watat': isWatat,
      'bw': bigWatat,
      'tg1': firstDayOfTagu,
    };
  }

  /// Verifies whether a given Myanmar year is a Watat year.
  ///
  /// The [myanmarYear] parameter represents the Myanmar year as an integer.
  /// Returns a map with Watat details and the full moon day.
  Map<String, dynamic> checkWatat(int myanmarYear) {
    const double solarYear = 1577917828 / 4320000;
    const double lunarMonth = 1577917828 / 53433336;
    const double myanmarEpoch = 1954168.050623;

    double excessDays, ta, tw, wo = 0;
    int nm = 8;
    int isWatat = 0;
    int secondWasoFullMoon;

    excessDays = (solarYear * (myanmarYear + 3739)) % lunarMonth;

    ta = (solarYear / 12 - lunarMonth) * (12 - nm);
    if (excessDays < ta) excessDays += lunarMonth;

    tw = lunarMonth - (solarYear / 12 - lunarMonth) * nm;
    if (excessDays >= tw) isWatat = 1;

    wo -= 4 / nm;
    if (myanmarYear == 1377) wo += 1;
    if (myanmarYear == 1344) {
      isWatat = 1;
    } else if (myanmarYear == 1345) {
      isWatat = 0;
    }

    secondWasoFullMoon = (solarYear * myanmarYear +
            myanmarEpoch -
            excessDays +
            4.5 * lunarMonth +
            wo)
        .round();

    return {
      'watat': isWatat,
      'fm': secondWasoFullMoon,
    };
  }

  /// Converts a number into its corresponding language-specific string.
  ///
  /// The [n] parameter is the number to convert.
  /// Returns a string representation of the number in the specified language.
  String numberToString(num n) {
    String result = "";
    n = n.floor();

    do {
      int digit = (n % 10).toInt();
      n = (n / 10).floor();
      // Use null-aware operator to provide a fallback
      result =
          (languageDictionary[digit.toString()] ?? digit.toString()) + result;
    } while (n > 0);

    return result;
  }
}
