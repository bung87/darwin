import cfbase, cfstring, cfarray, cfdictionary

export cfbase, cfstring, cfarray, cfdictionary

type
  CFLocale* = ptr object of CFObject

  # CFLocaleKey constants type
  CFLocaleKey* = distinct CFString

# CFLocaleKey constants (locale property keys)
var
  kCFLocaleIdentifierObj {.importc: "kCFLocaleIdentifier".}: CFLocaleKey
  kCFLocaleLanguageCodeObj {.importc: "kCFLocaleLanguageCode".}: CFLocaleKey
  kCFLocaleCountryCodeObj {.importc: "kCFLocaleCountryCode".}: CFLocaleKey
  kCFLocaleScriptCodeObj {.importc: "kCFLocaleScriptCode".}: CFLocaleKey
  kCFLocaleVariantCodeObj {.importc: "kCFLocaleVariantCode".}: CFLocaleKey
  kCFLocaleExemplarCharacterSetObj {.importc: "kCFLocaleExemplarCharacterSet".}: CFLocaleKey
  kCFLocaleCalendarIdentifierObj {.importc: "kCFLocaleCalendarIdentifier".}: CFLocaleKey
  kCFLocaleCalendarObj {.importc: "kCFLocaleCalendar".}: CFLocaleKey
  kCFLocaleCollationIdentifierObj {.importc: "kCFLocaleCollationIdentifier".}: CFLocaleKey
  kCFLocaleUsesMetricSystemObj {.importc: "kCFLocaleUsesMetricSystem".}: CFLocaleKey
  kCFLocaleMeasurementSystemObj {.importc: "kCFLocaleMeasurementSystem".}: CFLocaleKey
  kCFLocaleDecimalSeparatorObj {.importc: "kCFLocaleDecimalSeparator".}: CFLocaleKey
  kCFLocaleGroupingSeparatorObj {.importc: "kCFLocaleGroupingSeparator".}: CFLocaleKey
  kCFLocaleCurrencySymbolObj {.importc: "kCFLocaleCurrencySymbol".}: CFLocaleKey
  kCFLocaleCurrencyCodeObj {.importc: "kCFLocaleCurrencyCode".}: CFLocaleKey
  kCFLocaleCollatorIdentifierObj {.importc: "kCFLocaleCollatorIdentifier".}: CFLocaleKey
  kCFLocaleQuotationBeginDelimiterKeyObj {.importc: "kCFLocaleQuotationBeginDelimiterKey".}: CFLocaleKey
  kCFLocaleQuotationEndDelimiterKeyObj {.importc: "kCFLocaleQuotationEndDelimiterKey".}: CFLocaleKey
  kCFLocaleAlternateQuotationBeginDelimiterKeyObj {.importc: "kCFLocaleAlternateQuotationBeginDelimiterKey".}: CFLocaleKey
  kCFLocaleAlternateQuotationEndDelimiterKeyObj {.importc: "kCFLocaleAlternateQuotationEndDelimiterKey".}: CFLocaleKey

template kCFLocaleIdentifier*: CFLocaleKey =
  let a = kCFLocaleIdentifierObj; a
template kCFLocaleLanguageCode*: CFLocaleKey =
  let a = kCFLocaleLanguageCodeObj; a
template kCFLocaleCountryCode*: CFLocaleKey =
  let a = kCFLocaleCountryCodeObj; a
template kCFLocaleScriptCode*: CFLocaleKey =
  let a = kCFLocaleScriptCodeObj; a
template kCFLocaleVariantCode*: CFLocaleKey =
  let a = kCFLocaleVariantCodeObj; a
template kCFLocaleExemplarCharacterSet*: CFLocaleKey =
  let a = kCFLocaleExemplarCharacterSetObj; a
template kCFLocaleCalendarIdentifier*: CFLocaleKey =
  let a = kCFLocaleCalendarIdentifierObj; a
template kCFLocaleCalendar*: CFLocaleKey =
  let a = kCFLocaleCalendarObj; a
template kCFLocaleCollationIdentifier*: CFLocaleKey =
  let a = kCFLocaleCollationIdentifierObj; a
template kCFLocaleUsesMetricSystem*: CFLocaleKey =
  let a = kCFLocaleUsesMetricSystemObj; a
template kCFLocaleMeasurementSystem*: CFLocaleKey =
  let a = kCFLocaleMeasurementSystemObj; a
template kCFLocaleDecimalSeparator*: CFLocaleKey =
  let a = kCFLocaleDecimalSeparatorObj; a
template kCFLocaleGroupingSeparator*: CFLocaleKey =
  let a = kCFLocaleGroupingSeparatorObj; a
template kCFLocaleCurrencySymbol*: CFLocaleKey =
  let a = kCFLocaleCurrencySymbolObj; a
template kCFLocaleCurrencyCode*: CFLocaleKey =
  let a = kCFLocaleCurrencyCodeObj; a
template kCFLocaleCollatorIdentifier*: CFLocaleKey =
  let a = kCFLocaleCollatorIdentifierObj; a
template kCFLocaleQuotationBeginDelimiterKey*: CFLocaleKey =
  let a = kCFLocaleQuotationBeginDelimiterKeyObj; a
template kCFLocaleQuotationEndDelimiterKey*: CFLocaleKey =
  let a = kCFLocaleQuotationEndDelimiterKeyObj; a
template kCFLocaleAlternateQuotationBeginDelimiterKey*: CFLocaleKey =
  let a = kCFLocaleAlternateQuotationBeginDelimiterKeyObj; a
template kCFLocaleAlternateQuotationEndDelimiterKey*: CFLocaleKey =
  let a = kCFLocaleAlternateQuotationEndDelimiterKeyObj; a

# Common calendar identifier values
var
  kCFGregorianCalendarObj {.importc: "kCFGregorianCalendar".}: CFString
  kCFBuddhistCalendarObj {.importc: "kCFBuddhistCalendar".}: CFString
  kCFChineseCalendarObj {.importc: "kCFChineseCalendar".}: CFString
  kCFHebrewCalendarObj {.importc: "kCFHebrewCalendar".}: CFString
  kCFIslamicCalendarObj {.importc: "kCFIslamicCalendar".}: CFString
  kCFIslamicCivilCalendarObj {.importc: "kCFIslamicCivilCalendar".}: CFString
  kCFJapaneseCalendarObj {.importc: "kCFJapaneseCalendar".}: CFString
  kCFRepublicOfChinaCalendarObj {.importc: "kCFRepublicOfChinaCalendar".}: CFString
  kCFPersianCalendarObj {.importc: "kCFPersianCalendar".}: CFString
  kCFIndianCalendarObj {.importc: "kCFIndianCalendar".}: CFString
  kCFISO8601CalendarObj {.importc: "kCFISO8601Calendar".}: CFString
  kCFIslamicTabularCalendarObj {.importc: "kCFIslamicTabularCalendar".}: CFString
  kCFIslamicUmmAlQuraCalendarObj {.importc: "kCFIslamicUmmAlQuraCalendar".}: CFString

template kCFGregorianCalendar*: CFString =
  let a = kCFGregorianCalendarObj; a
template kCFBuddhistCalendar*: CFString =
  let a = kCFBuddhistCalendarObj; a
template kCFChineseCalendar*: CFString =
  let a = kCFChineseCalendarObj; a
template kCFHebrewCalendar*: CFString =
  let a = kCFHebrewCalendarObj; a
template kCFIslamicCalendar*: CFString =
  let a = kCFIslamicCalendarObj; a
template kCFIslamicCivilCalendar*: CFString =
  let a = kCFIslamicCivilCalendarObj; a
template kCFJapaneseCalendar*: CFString =
  let a = kCFJapaneseCalendarObj; a
template kCFRepublicOfChinaCalendar*: CFString =
  let a = kCFRepublicOfChinaCalendarObj; a
template kCFPersianCalendar*: CFString =
  let a = kCFPersianCalendarObj; a
template kCFIndianCalendar*: CFString =
  let a = kCFIndianCalendarObj; a
template kCFISO8601Calendar*: CFString =
  let a = kCFISO8601CalendarObj; a
template kCFIslamicTabularCalendar*: CFString =
  let a = kCFIslamicTabularCalendarObj; a
template kCFIslamicUmmAlQuraCalendar*: CFString =
  let a = kCFIslamicUmmAlQuraCalendarObj; a

# Type ID
proc CFLocaleGetTypeID*(): CFTypeID {.importc.}

# Creating Locales
proc CFLocaleCreate*(allocator: CFAllocator, localeIdentifier: CFString): CFLocale {.importc.}
proc CFLocaleCreateCopy*(allocator: CFAllocator, locale: CFLocale): CFLocale {.importc.}
proc CFLocaleGetSystem*(): CFLocale {.importc.}
proc CFLocaleGetCurrent*(): CFLocale {.importc.}

# Getting Locale Information
proc CFLocaleGetIdentifier*(locale: CFLocale): CFString {.importc.}
proc CFLocaleGetValue*(locale: CFLocale, key: CFLocaleKey): CFObject {.importc.}
proc CFLocaleCopyDisplayNameForPropertyValue*(locale: CFLocale, displayLocale: CFLocale, key: CFLocaleKey, value: CFString): CFString {.importc.}

# Preferred Languages
proc CFLocaleCopyPreferredLanguages*(): CFArray[CFString] {.importc.}

# Canonical Locale Identifiers
proc CFLocaleCreateCanonicalLanguageIdentifierFromString*(allocator: CFAllocator, localeIdentifier: CFString): CFString {.importc.}
proc CFLocaleCreateCanonicalLocaleIdentifierFromString*(allocator: CFAllocator, localeIdentifier: CFString): CFString {.importc.}
proc CFLocaleCreateCanonicalLocaleIdentifierFromScriptManagerCodes*(allocator: CFAllocator, languagCode: int16, regionCode: int16): CFString {.importc.}
proc CFLocaleCreateLocaleIdentifierFromWindowsLocaleCode*(allocator: CFAllocator, lcid: uint32): CFString {.importc.}
proc CFLocaleGetWindowsLocaleCodeFromLocaleIdentifier*(localeIdentifier: CFString): uint32 {.importc.}

# Language and Region Codes
proc CFLocaleCreateComponentsFromLocaleIdentifier*(allocator: CFAllocator, localeID: CFString): CFDictionary {.importc.}
proc CFLocaleCreateLocaleIdentifierFromComponents*(allocator: CFAllocator, dictionary: CFDictionary): CFString {.importc.}

# Convenience templates
proc createLocale*(allocator: CFAllocator, localeIdentifier: CFString): CFLocale {.inline.} =
  CFLocaleCreate(allocator, localeIdentifier)

proc createLocale*(localeIdentifier: string): CFLocale {.inline.} =
  CFLocaleCreate(kCFAllocatorDefault, CFStringCreate(localeIdentifier))

proc getSystemLocale*(): CFLocale {.inline.} = CFLocaleGetSystem()
proc getCurrentLocale*(): CFLocale {.inline.} = CFLocaleGetCurrent()
proc getIdentifier*(locale: CFLocale): CFString {.inline.} = CFLocaleGetIdentifier(locale)
proc getValue*(locale: CFLocale, key: CFLocaleKey): CFObject {.inline.} = CFLocaleGetValue(locale, key)
proc copyPreferredLanguages*(): CFArray[CFString] {.inline.} = CFLocaleCopyPreferredLanguages()
