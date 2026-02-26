import ../core_foundation / [cfbase, cfstring, cfdictionary, cfarray]
import ../core_graphics / cggeometry

type
    CTFontDescriptor* = ptr object of CFObject
    CTFontOrientation* {.size: sizeof(uint32).} = enum
        kCTFontOrientationDefault = 0
        kCTFontOrientationHorizontal = 1
        kCTFontOrientationVertical = 2

# Font descriptor creation
proc CTFontDescriptorGetTypeID*(): CFTypeID {.importc.}

proc CTFontDescriptorCreateWithNameAndSize*(name: CFString, size: CGFloat): CTFontDescriptor {.importc.}
proc CTFontDescriptorCreateWithAttributes*(attributes: CFDictionary): CTFontDescriptor {.importc.}

proc CTFontDescriptorCreateCopyWithAttributes*(original: CTFontDescriptor, attributes: CFDictionary): CTFontDescriptor {.importc.}
proc CTFontDescriptorCreateCopyWithFamily*(original: CTFontDescriptor, family: CFString): CTFontDescriptor {.importc.}
proc CTFontDescriptorCreateCopyWithSymbolicTraits*(original: CTFontDescriptor, symTraitValue: uint32, symTraitMask: uint32): CTFontDescriptor {.importc.}

# Font descriptor accessors
proc copyAttributes*(descriptor: CTFontDescriptor): CFDictionary {.importc: "CTFontDescriptorCopyAttributes".}
proc copyAttribute*(descriptor: CTFontDescriptor, attribute: CFString): CFObject {.importc: "CTFontDescriptorCopyAttribute".}
proc copyLocalizedAttribute*(descriptor: CTFontDescriptor, attribute: CFString, language: ptr CFString): CFObject {.importc: "CTFontDescriptorCopyLocalizedAttribute".}

# Font descriptor matching
proc CTFontDescriptorCreateMatchingFontDescriptors*(descriptor: CTFontDescriptor, mandatoryAttributes: CFSet): CFArray {.importc.}
proc CTFontDescriptorCreateMatchingFontDescriptor*(descriptor: CTFontDescriptor, mandatoryAttributes: CFSet): CTFontDescriptor {.importc.}
