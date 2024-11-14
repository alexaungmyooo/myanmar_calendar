// test/myanmar_calendar_test.dart

import 'package:flutter_test/flutter_test.dart';

import 'package:myanmar_calendar/myanmar_calendar.dart';

void main() {
  group('MyanmarCalendar Tests', () {
    final myCalendar = MyanmarCalendar();

    test('Gregorian to Myanmar Date - English (UK)', () {
      String date = myCalendar.getMyanmarDateForLanguage('en_gb');
      expect(date, isNotEmpty);
      // Add more specific expectations based on known date conversions
    });

    test('Gregorian to Myanmar Date - Myanmar Unicode', () {
      String date = myCalendar.getMyanmarDateForLanguage('my_mm');
      expect(date, isNotEmpty);
      // Add more specific expectations
    });

    test('Gregorian to Myanmar Date - Zawgyi-One', () {
      String date = myCalendar.getMyanmarDateForLanguage('my_zg1');
      expect(date, isNotEmpty);
      // Add more specific expectations
    });

    test('Gregorian to Myanmar Date - Mon', () {
      String date = myCalendar.getMyanmarDateForLanguage('my_mnw');
      expect(date, isNotEmpty);
      // Add more specific expectations
    });

    test('Gregorian to Myanmar Date - Shan (Tai)', () {
      String date = myCalendar.getMyanmarDateForLanguage('my_shn');
      expect(date, isNotEmpty);
      // Add more specific expectations
    });

    test('Gregorian to Myanmar Date - S\'gaw Karen', () {
      String date = myCalendar.getMyanmarDateForLanguage('my_ksw');
      expect(date, isNotEmpty);
      // Add more specific expectations
    });
  });
}
