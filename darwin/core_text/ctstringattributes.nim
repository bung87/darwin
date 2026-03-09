import darwin / core_foundation / [cfbase, cfstring, cfarray]

type
    CTUnderlineStyle* {.size: sizeof(int32).} = enum
        kCTUnderlineStyleNone = 0x00
        kCTUnderlineStyleSingle = 0x01
        kCTUnderlineStyleThick = 0x02
        kCTUnderlineStyleDouble = 0x09

    CTUnderlineStyleModifiers* {.size: sizeof(int32).} = enum
        kCTUnderlinePatternSolid = 0x0000
        kCTUnderlinePatternDot = 0x0100
        kCTUnderlinePatternDash = 0x0200
        kCTUnderlinePatternDashDot = 0x0300
        kCTUnderlinePatternDashDotDot = 0x0400

const
    kCTWritingDirectionEmbedding* = 0
    kCTWritingDirectionOverride* = 1 shl 1

var
    kCTFontAttributeName* {.importc.}: CFString
    kCTForegroundColorFromContextAttributeName* {.importc.}: CFString
    kCTKernAttributeName* {.importc.}: CFString
    kCTTrackingAttributeName* {.importc.}: CFString
    kCTLigatureAttributeName* {.importc.}: CFString
    kCTForegroundColorAttributeName* {.importc.}: CFString
    kCTBackgroundColorAttributeName* {.importc.}: CFString
    kCTParagraphStyleAttributeName* {.importc.}: CFString
    kCTStrokeWidthAttributeName* {.importc.}: CFString
    kCTStrokeColorAttributeName* {.importc.}: CFString
    kCTUnderlineStyleAttributeName* {.importc.}: CFString
    kCTSuperscriptAttributeName* {.importc.}: CFString
    kCTUnderlineColorAttributeName* {.importc.}: CFString
    kCTVerticalFormsAttributeName* {.importc.}: CFString
    kCTHorizontalInVerticalFormsAttributeName* {.importc.}: CFString
    kCTGlyphInfoAttributeName* {.importc.}: CFString
    kCTLanguageAttributeName* {.importc.}: CFString
    kCTRunDelegateAttributeName* {.importc.}: CFString
    kCTBaselineClassAttributeName* {.importc.}: CFString
    kCTBaselineInfoAttributeName* {.importc.}: CFString
    kCTBaselineReferenceInfoAttributeName* {.importc.}: CFString
    kCTBaselineOffsetAttributeName* {.importc.}: CFString
    kCTWritingDirectionAttributeName* {.importc.}: CFString
    kCTRubyAnnotationAttributeName* {.importc.}: CFString
    kCTAdaptiveImageProviderAttributeName* {.importc.}: CFString
