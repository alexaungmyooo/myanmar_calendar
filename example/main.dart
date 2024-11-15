import 'package:flutter/material.dart';
import 'package:myanmar_calendar/myanmar_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Myanmar Calendar Example')),
        body: const Center(
          child: MyanmarCalendarDisplay(
            language: 'my_MM', // Change as needed
          ),
        ),
      ),
    );
  }
}

class MyanmarCalendarDisplay extends StatefulWidget {
  final String language; // e.g., 'my-MM', 'en-GB', 'zg1', etc.

  const MyanmarCalendarDisplay({
    super.key,
    required this.language,
  });

  @override
  State<MyanmarCalendarDisplay> createState() => _MyanmarCalendarDisplayState();
}

class _MyanmarCalendarDisplayState extends State<MyanmarCalendarDisplay> {
  String formattedDate = '';
  late String fontFamily;

  @override
  void initState() {
    super.initState();
    MyanmarCalendar myCalendar = MyanmarCalendar();
    formattedDate = myCalendar.getMyanmarDateForLanguage(widget.language);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      formattedDate,
      style: TextStyle(
        fontFamily: fontFamily, // Ensure the font is added in pubspec.yaml
        color: Colors.black,
        fontSize: 16.0,
      ),
      textAlign: TextAlign.center,
    );
  }
}
