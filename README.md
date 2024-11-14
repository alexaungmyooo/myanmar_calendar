# Myanmar Calendar

A Dart/Flutter package to convert Gregorian dates to the Myanmar calendar, supporting multiple languages and font encodings including Myanmar Unicode, Zawgyi-One, Mon, Shan (Tai), and S'gaw Karen.

## Features

- Convert Gregorian dates to Myanmar calendar dates.
- Support for multiple languages:
  - English (UK)
  - Myanmar Unicode (`my_MM`)
  - Zawgyi-One (`my_ZG1`)
  - Mon (`my_MNW`)
  - Shan (Tai) (`my_SHN`)
  - S'gaw Karen (`my_KSW`)
- Easy integration with Flutter widgets.
## Installation

Add `myanmar_calendar` to your `pubspec.yaml`:

```yaml
dependencies:
  myanmar_calendar: ^1.0.0
```

Then run:

```bash
flutter pub get
```

Usage

```dart
import 'package:flutter/material.dart';
import 'package:myanmar_calendar/myanmar_calendar.dart';

class MyanmarCalendarDisplay extends StatefulWidget {
  final String language; // e.g., 'my_mm', 'en_gb', 'my_zg1', etc.

  const MyanmarCalendarDisplay({
    Key? key,
    required this.language,
  }) : super(key: key);

  @override
  _MyanmarCalendarDisplayState createState() => _MyanmarCalendarDisplayState();
}

class _MyanmarCalendarDisplayState extends State<MyanmarCalendarDisplay> {
  String formattedDate = '';

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
        color: Colors.black,
        fontSize: 16.0,
      ),
      textAlign: TextAlign.center,
    );
  }
}

```

## Supported Languages and Encodings

| Language Code | Description     |
|---------------|-----------------|
| en_GB         | English (UK)    |
| my_MM         | Myanmar Unicode |
| my_ZG1        | Zawgyi-One      |
| my_MNW        | Mon             |
| my_SHN        | Shan (Tai)      |
| my_KSW        | S'gaw Karen     |


## License
MIT

## Contributing
Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## Contact
For any inquiries or support, please contact aungmo@gmail.com.
