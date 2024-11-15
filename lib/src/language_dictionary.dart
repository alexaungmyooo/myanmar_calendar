// lib/src/language_dictionary.dart

/// Provides language-specific dictionaries for the Myanmar calendar.
class LanguageDictionary {
  /// Returns a dictionary of language-specific strings based on the given language code.
  ///
  /// The [lang] parameter specifies the language code as an integer:
  /// - `0`: English
  /// - `1`: Myanmar Unicode
  /// - `2`: Zawgyi-One
  /// - `3`: Mon
  /// - `4`: Tai
  /// - `5`: S'gaw Karen
  ///
  /// Returns a `Map<String, String>` containing language-specific translations
  /// for calendar-related terms.
  static Map<String, String> getLanguageCatalog(int lang) {
    switch (lang) {
      case 0: // English
        return {
          'First Waso': 'First Waso',
          'Tagu': 'Tagu',
          'Kason': 'Kason',
          'Nayon': 'Nayon',
          'Waso': 'Waso',
          'Wagaung': 'Wagaung',
          'Tawthalin': 'Tawthalin',
          'Thadingyut': 'Thadingyut',
          'Tazaungmon': 'Tazaungmon',
          'Nadaw': 'Nadaw',
          'Pyatho': 'Pyatho',
          'Tabodwe': 'Tabodwe',
          'Tabaung': 'Tabaung',
          'waxing': 'waxing',
          'waning': 'waning',
          'full moon': 'full moon',
          'new moon': 'new moon',
          'Sasana Year': 'Sasana Year',
          'Myanmar Year': 'Myanmar Year',
          'Ku': ' ',
          'Late': 'Late ',
          'Second': 'Second ',
          'Sunday': 'Sunday',
          'Monday': 'Monday',
          'Tuesday': 'Tuesday',
          'Wednesday': 'Wednesday',
          'Thursday': 'Thursday',
          'Friday': 'Friday',
          'Saturday': 'Saturday',
          'Nay': ' ',
          'Yat': ' ',
          'Sabbath Eve': 'Sb Eve',
          'Sabbath': 'Sabbath',
          '0': '0',
          '1': '1',
          '2': '2',
          '3': '3',
          '4': '4',
          '5': '5',
          '6': '6',
          '7': '7',
          '8': '8',
          '9': '9',
          ',': ',',
          '.': '.',
        };
      case 1: // Myanmar Unicode
        return {
          'First Waso': 'ပဝါဆို',
          'Tagu': 'တန်ခူး',
          'Kason': 'ကဆုန်',
          'Nayon': 'နယုန်',
          'Waso': 'ဝါဆို',
          'Wagaung': 'ဝါခေါင်',
          'Tawthalin': 'တော်သလင်း',
          'Thadingyut': 'သီတင်းကျွတ်',
          'Tazaungmon': 'တန်ဆောင်မုန်း',
          'Nadaw': 'နတ်တော်',
          'Pyatho': 'ပြာသို',
          'Tabodwe': 'တပို့တွဲ',
          'Tabaung': 'တပေါင်း',
          'waxing': 'လဆန်း',
          'waning': 'လဆုတ်',
          'full moon': 'လပြည့်',
          'new moon': 'လကွယ်',
          'Sasana Year': 'သာသနာနှစ်',
          'Myanmar Year': 'မြန်မာသက္ကရာဇ်',
          'Ku': 'ခုနှစ်',
          'Late': 'နှောင်း',
          'Second': 'ဒု',
          'Sunday': 'တနင်္ဂနွေ',
          'Monday': 'တနင်္လာ',
          'Tuesday': 'အင်္ဂါ',
          'Wednesday': 'ဗုဒ္ဓဟူး',
          'Thursday': 'ကြာသပတေး',
          'Friday': 'သောကြာ',
          'Saturday': 'စနေ',
          'Nay': 'နေ့',
          'Yat': 'ရက်',
          'Sabbath Eve': 'အဖိတ်',
          'Sabbath': 'ဥပုသ်',
          '0': '၀',
          '1': '၁',
          '2': '၂',
          '3': '၃',
          '4': '၄',
          '5': '၅',
          '6': '၆',
          '7': '၇',
          '8': '၈',
          '9': '၉',
          ',': '၊',
          '.': '။'
        };
      case 2: // Zawgyi-One
        return {
          'First Waso': 'ပဝါဆို',
          'Tagu': 'တန္ခူး',
          'Kason': 'ကဆုန္',
          'Nayon': 'နယုန္',
          'Waso': 'ဝါဆို',
          'Wagaung': 'ဝါေခါင္',
          'Tawthalin': 'ေတာ္သလင္း',
          'Thadingyut': 'သီတင္းကြ်တ္',
          'Tazaungmon': 'တန္ေဆာင္မုန္း',
          'Nadaw': 'နတ္ေတာ္',
          'Pyatho': 'ျပာသို',
          'Tabodwe': 'တပို႔တြဲ',
          'Tabaung': 'တေပါင္း',
          'waxing': 'လဆန္း',
          'waning': 'လဆုတ္',
          'full moon': 'လျပည့္',
          'new moon': 'လကြယ္',
          'Sasana Year': 'သာသနာႏွစ္',
          'Myanmar Year': 'ျမန္မာႏွစ္',
          'Ku': 'ခု',
          'Late': 'ေႏွာင္း',
          'Second': 'ဒု',
          'Sunday': 'တနဂၤေႏြ',
          'Monday': 'တနလၤာ',
          'Tuesday': 'အဂၤါ',
          'Wednesday': 'ဗုဒၶဟူး',
          'Thursday': 'ၾကာသပေတး',
          'Friday': 'ေသာၾကာ',
          'Saturday': 'စေန',
          'Nay': 'ေန႔',
          'Yat': 'ရက္',
          'Sabbath Eve': 'အဖိတ္',
          'Sabbath': 'ဥပုသ္',
          '0': '၀',
          '1': '၁',
          '2': '၂',
          '3': '၃',
          '4': '၄',
          '5': '၅',
          '6': '၆',
          '7': '၇',
          '8': '၈',
          '9': '၉',
          ',': '၊',
          '.': '။',
        };
      case 3: // Mon
        return {
          'First Waso': 'ဂိတုပ-ဒ္ဂိုန်',
          'Tagu': 'ဂိတုစဲ',
          'Kason': 'ဂိတုပသာ်',
          'Nayon': 'ဂိတုဇှေ်',
          'Waso': 'ဂိတုဒ္ဂိုန်',
          'Wagaung': 'ဂိတုခ္ဍဲသဳ',
          'Tawthalin': 'ဂိတုဘတ်',
          'Thadingyut': 'ဂိတုဝှ်',
          'Tazaungmon': 'ဂိတုက္ထိုန်',
          'Nadaw': 'ဂိတုမြေက္ကသဵု',
          'Pyatho': 'ဂိတုပှော်',
          'Tabodwe': 'ဂိတုမာ်',
          'Tabaung': 'ဂိတုဖဝ်ရဂိုန်',
          'waxing': 'မံက်',
          'waning': 'စွေက်',
          'full moon': 'ပေၚ်',
          'new moon': 'အိုတ်',
          'Sasana Year': 'သက္ကရာဇ် သာသနာ',
          'Myanmar Year': 'သက္ကရာဇ်ဍုၚ်',
          'Ku': 'သၞာံ',
          'Late': '',
          'Second': 'ဒု',
          'Sunday': 'တ္ၚဲအဒိုတ်',
          'Monday': 'တ္ၚဲစန်',
          'Tuesday': 'တ္ၚဲအင္ၚာ',
          'Wednesday': 'တ္ၚဲဗုဒ္ဓဝါ',
          'Thursday': 'တ္ၚဲဗြဴဗတိ',
          'Friday': 'တ္ၚဲသိုက်',
          'Saturday': 'တ္ၚဲသ္ၚိသဝ်',
          'Nay': '',
          'Yat': '',
          'Sabbath Eve': 'တ္ၚဲတိၚ်',
          'Sabbath': 'တ္ၚဲသဳ',
          '0': '၀',
          '1': '၁',
          '2': '၂',
          '3': '၃',
          '4': '၄',
          '5': '၅',
          '6': '၆',
          '7': '၇',
          '8': '၈',
          '9': '၉',
          ',': '၊',
          '.': '။'
        };
      case 4: // Tai
        return {
          'First Waso': 'ပပႅတ်ႇ',
          'Tagu': 'ႁႃႈ',
          'Kason': 'ႁူၵ်း',
          'Nayon': 'ၸဵတ်း',
          'Waso': 'ပႅတ်ႇ',
          'Wagaung': 'ၵဝ်ႈ',
          'Tawthalin': 'သိပ်း',
          'Thadingyut': 'သိပ်းဢဵတ်း',
          'Tazaungmon': 'သိပ်းသွင်',
          'Nadaw': 'ၸဵင်',
          'Pyatho': 'ၵမ်',
          'Tabodwe': 'သၢမ်',
          'Tabaung': 'သီႇ',
          'waxing': 'လိူၼ်မႂ်ႇ',
          'waning': 'လိူၼ်လွင်ႈ',
          'full moon': 'လိူၼ်မူၼ်း',
          'new moon': 'လိူၼ်လပ်း',
          'Sasana Year': 'ပီသႃႇသၼႃႇ',
          'Myanmar Year': 'ပီ​​ၵေႃးၸႃႇ',
          'Ku': 'ၶု',
          'Late': 'ဝၢႆး',
          'Second': 'ဒု',
          'Sunday': 'ဝၼ်းဢႃးတိတ်ႉ',
          'Monday': 'ဝၼ်းၸၼ်',
          'Tuesday': 'ဝၼ်းဢၢင်းၵၢၼ်း',
          'Wednesday': 'ဝၼ်းပုတ်ႉ',
          'Thursday': 'ဝၼ်းၽတ်း',
          'Friday': 'ဝၼ်းသုၵ်း',
          'Saturday': 'ဝၼ်းသဝ်',
          'Nay': 'ဝၼ်း',
          'Yat': 'ဝၼ်း',
          'Sabbath Eve': 'ၽိတ်ႈ',
          'Sabbath': 'သိၼ်',
          '0': '0',
          '1': '1',
          '2': '2',
          '3': '3',
          '4': '4',
          '5': '5',
          '6': '6',
          '7': '7',
          '8': '8',
          '9': '9',
          ',': '၊',
          '.': '။'
        };
      case 5: // S'gaw Karen
        return {
          'First Waso': 'ပလါဃိး',
          'Tagu': 'လါချံ',
          'Kason': 'ဒ့ၣ်ညါ',
          'Nayon': 'လါနွံ',
          'Waso': 'လါဃိး',
          'Wagaung': 'လါခူး',
          'Tawthalin': 'ဆံးမုၢ်',
          'Thadingyut': 'ဆံးဆၣ်',
          'Tazaungmon': 'လါနီ',
          'Nadaw': 'လါပျုၤ',
          'Pyatho': 'သလ့ၤ',
          'Tabodwe': 'ထ့ကူး',
          'Tabaung': 'သွ့ကီ',
          'waxing': 'လါထီၣ်',
          'waning': 'လါလီၤ',
          'full moon': 'လါပှဲၤ',
          'new moon': 'လါဘၢ',
          'Sasana Year': 'နံၣ်သာသနာ',
          'Myanmar Year': 'နံၣ်မြန်မာ',
          'Ku': 'ခု',
          'Late': 'စဲၤ',
          'Second': '၂ ',
          'Sunday': 'မုၢ်ဒဲး',
          'Monday': 'မုၢ်ဆၣ်',
          'Tuesday': 'မုၢ်ယူာ်',
          'Wednesday': 'မုၢ်ပျဲၤ',
          'Thursday': 'မုၢ်လ့ၤဧိၤ',
          'Friday': 'မုၢ်ဖီဖး',
          'Saturday': 'မုၢ်ဘူၣ်',
          'Nay': 'နံၤ',
          'Yat': 'ရက်',
          'Sabbath Eve': 'အဖိတ်',
          'Sabbath': 'အိၣ်ဘှံး',
          '0': '၀',
          '1': '၁',
          '2': '၂',
          '3': '၃',
          '4': '၄',
          '5': '၅',
          '6': '၆',
          '7': '၇',
          '8': '၈',
          '9': '၉',
          ',': '၊',
          '.': '။'
        };

      default:
        return {};
    }
  }
}
