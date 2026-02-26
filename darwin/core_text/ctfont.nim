import ../core_foundation / [cfbase, cfstring, cfarray, cfdictionary]
import ../core_graphics / [cggeometry, cgaffine_transform, cgfont, cgpath, cgcontext]

import ctfont_descriptor

type
    CTFont* = ptr object of CFObject
    CTFontOptions* = CFOptionFlags
    CTFontSymbolicTraits* = uint32

# Font name specifier constants
var
    kCTFontCopyrightNameKey* {.importc.}: CFString
    kCTFontFamilyNameKey* {.importc.}: CFString
    kCTFontSubFamilyNameKey* {.importc.}: CFString
    kCTFontStyleNameKey* {.importc.}: CFString
    kCTFontUniqueNameKey* {.importc.}: CFString
    kCTFontFullNameKey* {.importc.}: CFString
    kCTFontVersionNameKey* {.importc.}: CFString
    kCTFontPostScriptNameKey* {.importc.}: CFString
    kCTFontTrademarkNameKey* {.importc.}: CFString
    kCTFontManufacturerNameKey* {.importc.}: CFString
    kCTFontDesignerNameKey* {.importc.}: CFString
    kCTFontDescriptionNameKey* {.importc.}: CFString
    kCTFontVendorURLNameKey* {.importc.}: CFString
    kCTFontDesignerURLNameKey* {.importc.}: CFString
    kCTFontLicenseNameKey* {.importc.}: CFString
    kCTFontLicenseURLNameKey* {.importc.}: CFString
    kCTFontSampleTextNameKey* {.importc.}: CFString
    kCTFontPostScriptCIDNameKey* {.importc.}: CFString

# Font creation
proc CTFontGetTypeID*(): CFTypeID {.importc.}

proc CTFontCreateWithName*(name: CFString, size: CGFloat, matrix: ptr CGAffineTransform): CTFont {.importc.}
proc CTFontCreateWithFontDescriptor*(descriptor: CTFontDescriptor, size: CGFloat, matrix: ptr CGAffineTransform): CTFont {.importc.}

# Font options
const
    kCTFontOptionsDefault* = CTFontOptions(0)
    kCTFontOptionsPreventAutoActivation* = CTFontOptions(1 shl 0)
    kCTFontOptionsPreventAutoDownload* = CTFontOptions(1 shl 1)
    kCTFontOptionsPreferSystemFont* = CTFontOptions(1 shl 2)

proc CTFontCreateWithNameAndOptions*(name: CFString, size: CGFloat, matrix: ptr CGAffineTransform, options: CTFontOptions): CTFont {.importc.}
proc CTFontCreateWithFontDescriptorAndOptions*(descriptor: CTFontDescriptor, size: CGFloat, matrix: ptr CGAffineTransform, options: CTFontOptions): CTFont {.importc.}

# UI Font types
const
    kCTFontUIFontNone* = uint32.high
    kCTFontUIFontUser* = 0'u32
    kCTFontUIFontUserFixedPitch* = 1'u32
    kCTFontUIFontSystem* = 2'u32
    kCTFontUIFontEmphasizedSystem* = 3'u32
    kCTFontUIFontSmallSystem* = 4'u32
    kCTFontUIFontSmallEmphasizedSystem* = 5'u32
    kCTFontUIFontMiniSystem* = 6'u32
    kCTFontUIFontMiniEmphasizedSystem* = 7'u32
    kCTFontUIFontViews* = 8'u32
    kCTFontUIFontApplication* = 9'u32
    kCTFontUIFontLabel* = 10'u32
    kCTFontUIFontMenuTitle* = 11'u32
    kCTFontUIFontMenuItem* = 12'u32
    kCTFontUIFontMenuItemMark* = 13'u32
    kCTFontUIFontMenuItemCmdKey* = 14'u32
    kCTFontUIFontWindowTitle* = 15'u32
    kCTFontUIFontPushButton* = 16'u32
    kCTFontUIFontUtilityWindowTitle* = 17'u32
    kCTFontUIFontAlertHeader* = 18'u32
    kCTFontUIFontSystemDetail* = 19'u32
    kCTFontUIFontEmphasizedSystemDetail* = 20'u32
    kCTFontUIFontToolbar* = 21'u32
    kCTFontUIFontSmallToolbar* = 22'u32
    kCTFontUIFontMessage* = 23'u32
    kCTFontUIFontPalette* = 24'u32
    kCTFontUIFontToolTip* = 25'u32
    kCTFontUIFontControlContent* = 26'u32

proc CTFontCreateUIFontForLanguage*(uiType: uint32, size: CGFloat, language: CFString): CTFont {.importc.}
proc CTFontCreateCopyWithAttributes*(font: CTFont, size: CGFloat, matrix: ptr CGAffineTransform, attributes: CTFontDescriptor): CTFont {.importc.}
proc CTFontCreateCopyWithSymbolicTraits*(font: CTFont, size: CGFloat, matrix: ptr CGAffineTransform, symTraitValue: CTFontSymbolicTraits, symTraitMask: CTFontSymbolicTraits): CTFont {.importc.}
proc CTFontCreateCopyWithFamily*(font: CTFont, size: CGFloat, matrix: ptr CGAffineTransform, family: CFString): CTFont {.importc.}

# Font cascading
proc CTFontCreateForString*(currentFont: CTFont, string: CFString, range: CFRange): CTFont {.importc.}
proc CTFontCreateForStringWithLanguage*(currentFont: CTFont, string: CFString, range: CFRange, language: CFString): CTFont {.importc.}

# Font accessors
proc copyFontDescriptor*(font: CTFont): CTFontDescriptor {.importc: "CTFontCopyFontDescriptor".}
proc copyAttribute*(font: CTFont, attribute: CFString): CFObject {.importc: "CTFontCopyAttribute".}
proc getSize*(font: CTFont): CGFloat {.importc: "CTFontGetSize".}
proc copyTraits*(font: CTFont): CFDictionary {.importc: "CTFontCopyTraits".}

# Font traits
const
    kCTFontTraitItalic* = 1 shl 0
    kCTFontTraitBold* = 1 shl 1
    kCTFontTraitExpanded* = 1 shl 5
    kCTFontTraitCondensed* = 1 shl 6
    kCTFontTraitMonoSpace* = 1 shl 10
    kCTFontTraitVertical* = 1 shl 11
    kCTFontTraitUIOptimized* = 1 shl 12
    kCTFontTraitColorGlyphs* = 1 shl 13
    kCTFontTraitComposite* = 1 shl 14
    kCTFontTraitClassMask* = 0xF0000000'u32

var
    kCTFontSymbolicTrait* {.importc.}: CFString
    kCTFontWeightTrait* {.importc.}: CFString
    kCTFontWidthTrait* {.importc.}: CFString
    kCTFontSlantTrait* {.importc.}: CFString

proc getSymbolicTraits*(font: CTFont): CTFontSymbolicTraits {.importc: "CTFontGetSymbolicTraits".}

# Font names
proc copyPostScriptName*(font: CTFont): CFString {.importc: "CTFontCopyPostScriptName".}
proc copyFamilyName*(font: CTFont): CFString {.importc: "CTFontCopyFamilyName".}
proc copyFullName*(font: CTFont): CFString {.importc: "CTFontCopyFullName".}
proc copyDisplayName*(font: CTFont): CFString {.importc: "CTFontCopyDisplayName".}
proc copyName*(font: CTFont, nameKey: CFString): CFString {.importc: "CTFontCopyName".}
proc copyLocalizedName*(font: CTFont, nameKey: CFString, actualLanguage: ptr CFString): CFString {.importc: "CTFontCopyLocalizedName".}

# Font metrics
proc getAscent*(font: CTFont): CGFloat {.importc: "CTFontGetAscent".}
proc getDescent*(font: CTFont): CGFloat {.importc: "CTFontGetDescent".}
proc getLeading*(font: CTFont): CGFloat {.importc: "CTFontGetLeading".}
proc getCapHeight*(font: CTFont): CGFloat {.importc: "CTFontGetCapHeight".}
proc getXHeight*(font: CTFont): CGFloat {.importc: "CTFontGetXHeight".}
proc getUnderlinePosition*(font: CTFont): CGFloat {.importc: "CTFontGetUnderlinePosition".}
proc getUnderlineThickness*(font: CTFont): CGFloat {.importc: "CTFontGetUnderlineThickness".}
proc getSlantAngle*(font: CTFont): CGFloat {.importc: "CTFontGetSlantAngle".}
proc getStemV*(font: CTFont): cdouble {.importc: "CTFontGetStemV".}

# Font bounding box
proc getBoundingBox*(font: CTFont): CGRect {.importc: "CTFontGetBoundingBox".}

# Font glyphs
proc getGlyphCount*(font: CTFont): CFIndex {.importc: "CTFontGetGlyphCount".}
proc copyCharacterSet*(font: CTFont): CFCharacterSet {.importc: "CTFontCopyCharacterSet".}
proc getStringEncoding*(font: CTFont): CFStringEncoding {.importc: "CTFontGetStringEncoding".}

proc getGlyphsForCharacters*(font: CTFont, characters: ptr UniChar, glyphs: ptr CGGlyph, count: CFIndex): bool {.importc: "CTFontGetGlyphsForCharacters".}

# Font metrics for glyphs
proc getAdvancesForGlyphs*(font: CTFont, orientation: CTFontOrientation, glyphs: ptr CGGlyph, advances: ptr CGSize, count: CFIndex): cdouble {.importc: "CTFontGetAdvancesForGlyphs".}
proc getBoundingRectsForGlyphs*(font: CTFont, orientation: CTFontOrientation, glyphs: ptr CGGlyph, boundingRects: ptr CGRect, count: CFIndex): CGRect {.importc: "CTFontGetBoundingRectsForGlyphs".}
proc getOpticalBoundsForGlyphs*(font: CTFont, glyphs: ptr CGGlyph, boundingRects: ptr CGRect, count: CFIndex, options: CFOptionFlags): CGRect {.importc: "CTFontGetOpticalBoundsForGlyphs".}

# Font images
proc drawGlyphsAtPositions*(font: CTFont, glyphs: ptr CGGlyph, positions: ptr CGPoint, count: CFIndex, context: CGContext) {.importc: "CTFontDrawGlyphsAtPositions".}

# Font variations
var
    kCTFontVariationAxisIdentifierKey* {.importc.}: CFString
    kCTFontVariationAxisMinimumValueKey* {.importc.}: CFString
    kCTFontVariationAxisMaximumValueKey* {.importc.}: CFString
    kCTFontVariationAxisDefaultValueKey* {.importc.}: CFString
    kCTFontVariationAxisNameKey* {.importc.}: CFString
    kCTFontVariationAxisHiddenKey* {.importc.}: CFString

proc copyVariationAxes*(font: CTFont): CFArray {.importc: "CTFontCopyVariationAxes".}
proc copyVariation*(font: CTFont): CFDictionary {.importc: "CTFontCopyVariation".}

# Font features
var
    kCTFontFeatureTypeIdentifierKey* {.importc.}: CFString
    kCTFontFeatureTypeNameKey* {.importc.}: CFString
    kCTFontFeatureTypeExclusiveKey* {.importc.}: CFString
    kCTFontFeatureTypeSelectorsKey* {.importc.}: CFString
    kCTFontFeatureSelectorIdentifierKey* {.importc.}: CFString
    kCTFontFeatureSelectorNameKey* {.importc.}: CFString
    kCTFontFeatureSelectorDefaultKey* {.importc.}: CFString
    kCTFontFeatureSelectorSettingKey* {.importc.}: CFString

proc copyFeatures*(font: CTFont): CFArray {.importc: "CTFontCopyFeatures".}
proc copyFeatureSettings*(font: CTFont): CFArray {.importc: "CTFontCopyFeatureSettings".}

# Font conversion
proc copyGraphicsFont*(font: CTFont, attributes: ptr CTFontDescriptor): CGFont {.importc: "CTFontCopyGraphicsFont".}
proc createWithGraphicsFont*(graphicsFont: CGFont, size: CGFloat, matrix: ptr CGAffineTransform, attributes: CTFontDescriptor): CTFont {.importc: "CTFontCreateWithGraphicsFont".}

# Font path
proc getGlyphPath*(font: CTFont, glyph: CGGlyph, matrix: ptr CGAffineTransform): CGPath {.importc: "CTFontCreatePathForGlyph".}

# Font table access
proc copyTableList*(font: CTFont, options: CFOptionFlags): CFArray {.importc: "CTFontCopyTableList".}
proc copyTable*(font: CTFont, tag: uint32, options: CFOptionFlags): CFData {.importc: "CTFontCopyTable".}

# Baseline
var
    kCTBaselineClassRoman* {.importc.}: CFString
    kCTBaselineClassIdeographicCentered* {.importc.}: CFString
    kCTBaselineClassIdeographicLow* {.importc.}: CFString
    kCTBaselineClassIdeographicHigh* {.importc.}: CFString
    kCTBaselineClassHanging* {.importc.}: CFString
    kCTBaselineClassMath* {.importc.}: CFString
    kCTBaselineReferenceFont* {.importc.}: CFString
    kCTBaselineOriginalFont* {.importc.}: CFString

proc getBaselineClass*(font: CTFont): CFString {.importc: "CTFontCopyDefaultBaselineClass".}
proc getBaselineForClass*(font: CTFont, baselineClass: CFString): CGFloat {.importc: "CTFontGetBaselineForClass".}

# Font attributes
var
    kCTFontURLAttribute* {.importc.}: CFString
    kCTFontNameAttribute* {.importc.}: CFString
    kCTFontDisplayNameAttribute* {.importc.}: CFString
    kCTFontFamilyNameAttribute* {.importc.}: CFString
    kCTFontStyleNameAttribute* {.importc.}: CFString
    kCTFontTraitsAttribute* {.importc.}: CFString
    kCTFontVariationAttribute* {.importc.}: CFString
    kCTFontSizeAttribute* {.importc.}: CFString
    kCTFontMatrixAttribute* {.importc.}: CFString
    kCTFontCascadeListAttribute* {.importc.}: CFString
    kCTFontCharacterSetAttribute* {.importc.}: CFString
    kCTFontLanguagesAttribute* {.importc.}: CFString
    kCTFontBaselineAdjustAttribute* {.importc.}: CFString
    kCTFontMacintoshEncodingsAttribute* {.importc.}: CFString
    kCTFontFeaturesAttribute* {.importc.}: CFString
    kCTFontFeatureSettingsAttribute* {.importc.}: CFString
    kCTFontFixedAdvanceAttribute* {.importc.}: CFString
    kCTFontOrientationAttribute* {.importc.}: CFString
    kCTFontFormatAttribute* {.importc.}: CFString
    kCTFontRegistrationScopeAttribute* {.importc.}: CFString
    kCTFontPriorityAttribute* {.importc.}: CFString
    kCTFontEnabledAttribute* {.importc.}: CFString
